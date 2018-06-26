
//Address: 0x717D6E8B55E0FdF94D74bb27208f5b6074Dd9cD4
//Contract name: AnalyticProxy
//Balance: 0 Ether
//Verification Date: 10/17/2017
//Transacion Count: 0

// CODE STARTS HERE

contract InvestmentAnalytics {
function iaInvestedBy(address investor) external payable;
}

/*
 * @title This is proxy for analytics. Target contract can be found at field m_analytics (see "read contract").
 * @author Eenae

 * FIXME after fix of truffle issue #560: refactor to a separate contract file which uses InvestmentAnalytics interface
 */
contract AnalyticProxy {

    function AnalyticProxy() {
        m_analytics = InvestmentAnalytics(msg.sender);
    }

    /// @notice forward payment to analytics-capable contract
    function() payable {
        m_analytics.iaInvestedBy.value(msg.value)(msg.sender);
    }

    InvestmentAnalytics public m_analytics;
}
