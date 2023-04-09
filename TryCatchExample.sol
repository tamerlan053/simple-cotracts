//SPDX-License-Identifier: MIT 

pragma solidity 0.8.15;


contract ErrorHandling {
    event ErrorLogging(string reason);
    event ErrorLogCode(uint errorCode);
    event ErrorLogBytes(bytes lowLevelData);
    function catchTheError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {
            //add code here!
        } catch Error(string memory reason) {
            emit ErrorLogging(reason);
        } catch Panic(uint errorCode) {
            emit ErrorLogCode(errorCode);
        } catch (bytes memory lowLevelData) {
            emit ErrorLogBytes(lowLevelData);
        }
    }
}



