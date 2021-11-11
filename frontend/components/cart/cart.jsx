import React from 'react';

class Cart extends React.Component {
    render(){
        const {cart} = this.props;
        console.log(cart);
        return (
            <div>
                cart
            </div>
        );
    }
}

export default Cart;