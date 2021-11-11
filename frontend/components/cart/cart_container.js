import { connect } from 'react-redux';
import { createCart, deleteCart } from '../../actions/cart_actions';
import Cart from './cart';

const mapStateToProps = (state) => ({
    cart: state.entities.carts[state.session.id]
});

const mapDispatchToProps = (dispatch) => ({
    createCart: cart => dispatch(createCart(cart)),
    deleteCart: cart => dispatch(deleteCart(cart))
});

export default connect(mapStateToProps, mapDispatchToProps)(Cart);