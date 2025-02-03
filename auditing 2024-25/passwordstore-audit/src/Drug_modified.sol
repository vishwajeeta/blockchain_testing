// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DrugSensitivityData {
    //---------Errors-----------------
    error Only_admin_can_perform_this_action();
    error Drug_entry_already_exists();
    error Drug_entry_does_not_exist();
    error Access_denied();

    //-------State variable-------------------
    address public immutable i_admin;
    uint256 public s_entryCount;

    mapping(uint256 => DrugEntry) public s_drugData;
    mapping(address => bool) public s_authorizedResearchers;

    //-------------Events-----------------------
    event DataAdded(uint256 indexed drugId, address contributor);
    event DataVerified(uint256 indexed drugId, bool verified);

    //-----------Modifiers---------------------------
    modifier onlyAdmin() {
        if (msg.sender != i_admin) revert Only_admin_can_perform_this_action();
        _;
    }

    modifier onlyAuthorized() {
        if (!s_authorizedResearchers[msg.sender]) revert Access_denied();
        _;
    }

    //-----------Constructor-------------------------------
    constructor() {
        i_admin = msg.sender;
    }

    //-----------Struct-----------------------------------
    struct DrugEntry {
        uint256 drugId;
        string drugName;
        string target;
        string pathway;
        string cellLine;
        string tcgaDesc;
        uint256 lnIc50;
        uint256 auc;
        address contributor;
        bool verified;
    }

    //----------------External functions---------------

    function addDrugData(
        uint256 _drugId,
        string memory _drugName,
        string memory _target,
        string memory _pathway,
        string memory _cellLine,
        string memory _tcgaDesc,
        uint256 _lnIc50,
        uint256 _auc
    ) public {
        if (s_drugData[_drugId].drugId != 0) revert Drug_entry_already_exists();

        s_drugData[_drugId] =
            DrugEntry(_drugId, _drugName, _target, _pathway, _cellLine, _tcgaDesc, _lnIc50, _auc, msg.sender, false);
        s_entryCount++;
        emit DataAdded(_drugId, msg.sender);
    }

    function verifyDrugData(uint256 _drugId, bool _verified) public onlyAdmin {
        if (s_drugData[_drugId].drugId == 0) revert Drug_entry_does_not_exist();
        s_drugData[_drugId].verified = _verified;
        emit DataVerified(_drugId, _verified);
    }

    function authorizeResearcher(address _researcher) public onlyAdmin {
        s_authorizedResearchers[_researcher] = true;
    }

    function revokeResearcher(address _researcher) public onlyAdmin {
        s_authorizedResearchers[_researcher] = false;
    }

    function getDrugData(uint256 _drugId) public view onlyAuthorized returns (DrugEntry memory) {
        if (s_drugData[_drugId].drugId == 0) revert Drug_entry_does_not_exist();
        return s_drugData[_drugId];
    }
}
