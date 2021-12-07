import { connect } from 'react-redux';
import { createCart, fetchCart, deleteCart } from '../../actions/cart_actions';
import { deleteCartItem } from '../../actions/cart_item_actions';
import Cart from './cart';

const mapStateToProps = (state) => {
    const newState = getState();
    return {
        cart: newState.entities.carts[state.session.id],
        sessionId: state.session.id
    }
};

const mapDispatchToProps = (dispatch) => ({
    createCart: cart => dispatch(createCart(cart)),
    fetchCart: (id, sessionId) => dispatch(fetchCart(id, sessionId)),
    deleteCart: cart => dispatch(deleteCart(cart)),
    deleteCartItem: (cartItem, cartId) => dispatch(deleteCartItem(cartItem, cartId))
});

export default connect(mapStateToProps, mapDispatchToProps)(Cart);