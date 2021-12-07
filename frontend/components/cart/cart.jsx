import React from 'react';
import { Link } from 'react-router-dom';

class Cart extends React.Component {
    constructor(props){
        super(props);

        this.deleteCartItem = this.deleteCartItem.bind(this);
    }
    
    componentDidMount(){
        if(this.props.sessionId){
            this.props.fetchCart(1, this.props.sessionId);
        }
    }

    deleteCartItem(cartItem, cartId){
        this.props.deleteCartItem(cartItem.item, cartId)
            .then(location.reload());
    }

    render(){
        const {cart} = this.props;
        let subTotal = 0;
        let numItems = 0;
        let cartItemsObject = {};
        if(cart){
            numItems = cart.cart_items.length;
            cart.cart_items.forEach(cart_item => {
                subTotal += cart_item.price;

                if(cartItemsObject[cart_item.id]){
                    cartItemsObject[cart_item.id]['quantity'] += 1;
                }else{
                    cartItemsObject[cart_item.id] = {
                        'item': cart_item,
                        'quantity': 1
                    }
                }
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

                    {Object.values(cartItemsObject).map((cart_item, i) => (
                        <div key={i} className="cart-item">
                            <div className="cart-item-img-container">
                                <img className="cart-item-img" src={cart_item.item.picture_url} alt="cart-item-img" />
                            </div>
                            <div className="cart-item-info">
                                <div className="cart-item-name">{cart_item.item.name}</div>
                                <div className="cart-item-price">${cart_item.item.price}</div>
                                <div className="cart-item-stock-status">In Stock</div>
                                <div className="cart-item-shipping">Eligible for FREE Shipping <span className="cart-item-free-returns">& FREE Returns</span></div>
                                <div className="cart-item-department"><span className="cart-item-department-label">Department:</span> {cart_item.item.department}</div>
                                <div className="cart-item-crud-row">
                                    <div className="cart-item-quantity"><span className="cart-item-quantity-label">Qty:</span> {cart_item.quantity}</div>
                                    <div className="cart-item-crud-divider">|</div>
                                    <div className="cart-item-delete-btn" onClick={() => this.deleteCartItem(cart_item, cart.id)}>Delete</div>
                                </div>
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
                        <img className="empty-cart-img" src={window.emptyCart} alt="empty-cart" />
                    </div>
                </div>
            )
        ) : (
            <div className="cart">
                <div className="cart-container logged-out-empty-cart">
                    <div className="cart-heading">Your Nozama Cart is empty.</div>
                    <div className="empty-cart-container">
                        <img className="empty-cart-img" src={window.emptyCart} alt="empty-cart" />
                        <Link className="empty-cart-signin-button" to="/login">Sign in to your account</Link>
                        <Link className="empty-cart-signup-button" to="/signup">Sign up now</Link>
                    </div>
                </div>
            </div>
        ));
    }
}

export default Cart;