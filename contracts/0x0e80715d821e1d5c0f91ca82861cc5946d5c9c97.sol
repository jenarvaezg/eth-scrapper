
//Address: 0x0e80715d821e1d5c0f91ca82861cc5946d5c9c97
//Contract name: AnalyticProxy
//Balance: 0 Ether
//Verification Date: 10/28/2017
//Transacion Count: 1

// CODE STARTS HERE

/*
 * @title Mixin contract which supports different payment channels and provides analytical per-channel data.
 * @author Eenae
 */
contract InvestmentAnalytics {
function iaInvestedBy(address investor) external payable;
}

/*
 * @title This is proxy for analytics. Target contract can be found at field m_analytics (see "read contract").
 * @author Eenae
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
