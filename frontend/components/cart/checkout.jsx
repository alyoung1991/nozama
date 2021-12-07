import React from 'react';

class Checkout extends React.Component {
    render(){
        return (
            <div className="checkout-container">
                <div className="checkout-sub-container">
                    <div className="checkout-heading"><i className="fas fa-check"></i> Thank you, your order has been placed.</div>
                    <div className="checkout-social-links">Thank you for using Nozama.com, feel free to connect with me on <a href="https://www.linkedin.com/in/albertoyoung/" target="_blank">LinkedIn</a>, or checkout my <a href="https://www.youngalberto.com/">website</a></div>
                </div>
            </div>
        );
    }
}

export default Checkout;