- used to store password of user
- no third party/other user should be able to access (view) or modify the password

### vernibility
1. (high) anyone can update password non-owner
```solidity
function setPassword(string memory newPassword) external {
        s_password = newPassword;
        emit SetNewPassword();
    }
```
#### To
```solidity
//create and add only owner modifier
function setPassword(string memory newPassword) external onlyOwner{
        s_password = newPassword;
        emit SetNewPassword();
    }
```

### few problems to solve:-
- only owner modifier 
- add onlyowner modifier to (setPassword,getPassword)

### modifications for better usage
- add struct with array to store username with password ,it can store multiple passwords {key: value pair}