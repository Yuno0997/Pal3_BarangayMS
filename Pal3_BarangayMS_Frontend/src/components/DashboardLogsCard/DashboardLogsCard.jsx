import React, { Component } from 'react';
import StoreContext from '../../store/StoreContext';
import { observer } from 'mobx-react';

class DashboardLogsCard extends Component {
  constructor(props) {
    super(props);

    this.state = {
      showAll: false
    };
  }

  toggleShow = () => {
    this.setState((prev) => ({
      showAll: !prev.showAll
    }));
  };

  render() {
    const { header, data } = this.props;
    const { showAll } = this.state;

    const visibleData =
      data && data.length > 0
        ? showAll
          ? data
          : data.slice(0, 2)
        : [];

    return (
      <div className='dashboardlogs_ctr'>
        <div className='dashboardlogs_hdr'>
          <span>{header}</span>
        </div>

        <div className='dashboardlogs_content'>
          {visibleData.length > 0 ? (
            visibleData.map((item, index) => (
              <div key={index} className='dashboardlogs_item'>

                <div className='item_hdr'>
                  <span className='name'>
                    <i className="bi bi-person-fill"></i>
                    {' '}
                    {item.recipient}
                  </span>

                  <span className='type'>
                    {item.mainActionStr}
                  </span>
                </div>

                <div className='item_body'>
                  <span className='desc'>
                    {item.otherDetail}
                  </span>

                  <span className='date'>
                    <i className="bi bi-clock"></i>
                    {' '}
                    {item.sendDtString}
                  </span>
                </div>

                <div className='item_footer'>
                  <span className='refNo'>
                    Ref #: {item.refNo}
                  </span>
                </div>

              </div>
            ))
          ) : (
            <div className='dashboardlogs_empty'>
              No recent logs found.
            </div>
          )}

          {data && data.length > 3 && (
            <div style={{ textAlign: 'center', marginTop: '10px' }}>
              <button
                onClick={this.toggleShow}
                className='dashboardhotline_togglebtn'
              >
                {showAll ? (
                  <>
                    {' '}
                    Show Less
                  </>
                ) : (
                  <>
                    {' '}
                    Show More
                  </>
                )}
              </button>
            </div>
          )}
        </div>

      </div>
    );
  }
}

DashboardLogsCard.contextType = StoreContext;

export default observer(DashboardLogsCard);