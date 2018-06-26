
//Address: 0xe7c8635bc387994069f7b7f25b89534c67727a01
//Contract name: ProxyElectricQueue
//Balance: 0 Ether
//Verification Date: 3/10/2017
//Transacion Count: 4

// CODE STARTS HERE

pragma solidity ^0.4.8;
//interfaces for correct compiling
contract IElectricQueue {
     
        function ElectricQueue();
  
      //external function that gives possibility to invest in queue or concret charger
        function  investInQueue(address _from , uint _charger) payable  returns(bool success);
    

      function   returnMoney(address _to) payable returns (bool success);
}
//contract
contract ProxyElectricQueue 
{
    address public Owner = msg.sender;      
    address public Manager;
    IElectricQueue public ActualQueue; 
       function setManager(address manager) external{
             if (msg.sender != Owner) return ;
             Manager = manager;
        }
    function changeActualQueue(address actualQueueAddress){
    if (msg.sender != Owner && msg.sender != Manager) return ;
        ActualQueue =IElectricQueue(actualQueueAddress);
    }
    
    function investInCharger (uint chargerId) payable  {
        if(msg.value < 1 ether){
            if(!msg.sender.send(msg.value))
                throw;
        } 
        ActualQueue.investInQueue.value(msg.value)(msg.sender,chargerId);
    }
    function returnMoney() payable{
        if(msg.value < 10 finney || msg.value > 1 ether){
             if(!msg.sender.send(msg.value))
                throw;
        }
        ActualQueue.returnMoney.value(msg.value)(msg.sender);

    }
    function ()  payable{
        if(msg.value < 1 ether){
           if(!msg.sender.send(msg.value))
                throw;
        } 
        ActualQueue.investInQueue.value(msg.value)(msg.sender,0);
    }
    
}
