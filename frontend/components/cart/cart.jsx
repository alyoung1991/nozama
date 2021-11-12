import React from 'react';

class Cart extends React.Component {
    componentDidMount(){
        if(this.props.sessionId){
            this.props.fetchCart(1, this.props.sessionId);
        }
        this.setState({});
    }

    render(){
        this.props.fetchCart(1, this.props.sessionId);
        const {cart} = this.props;
        let subTotal = 0;
        let numItems = 0;
        if(cart){
            numItems = cart.cart_items.length;
            cart.cart_items.forEach(cart_item => {
                subTotal += cart_item.price;
            });
        }
        const priceFormatter = new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'USD'
        });
        const subTotalString = priceFormatter.format(subTotal);
        return ((cart) ? (
            (cart.cart_items.length > 0) ? (
            <div className="cart">
                <div className="cart-container">
                    <div className="cart-heading">Shopping Cart</div>
                    {cart.cart_items.map((cart_item, i) => (
                        <div key={i} className="cart-item">
                            <div className="cart-item-img-container">
                                <img className="cart-item-img" src={cart_item.picture_url} alt="cart-item-img" />
                            </div>
                            <div className="cart-item-info">
                                <div className="cart-item-name">{cart_item.name}</div>
                                <div className="cart-item-price">${cart_item.price}</div>
                            </div>
                        </div>
                    ))}
                    <div className="cart-subtotal">
                        Subtotal ({cart.cart_items.length} item{numItems === 1 ? '' : 's'}): <span className="cart-subtotal-amount">{subTotalString}</span>
                    </div>
                </div>
                {(cart.cart_items.length > 0) ? (
                    <div className="subtotal-display">
                        <div className="subtotal-display-heading">Subtotal ({cart.cart_items.length} item{numItems === 1 ? '' : 's'}): <span className="cart-subtotal-amount">{subTotalString}</span></div>
                        <button className="checkout-button">Proceed to checkout</button>
                    </div>
                ) : (
                    <></>
                )}
            </div>
            ) : (
                <div className="cart">
                    <div className="cart-container">
                        <div className="cart-heading">Your Nozama Cart is empty.</div>
                    </div>
                </div>
            )
        ) : (
            <div className="cart">
                <div className="cart-container">
                    <div className="cart-heading">Your Nozama Cart is empty.</div>
                </div>
            </div>
        ));
    }
}

export default Cart;