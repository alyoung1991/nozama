import { connect } from "react-redux";
import { fetchProduct } from "../../actions/product_actions";
import { fetchCart } from "../../actions/cart_actions";
import { createCartItem } from "../../actions/cart_item_actions";
import { selectProduct, selectReviewsForProduct } from "../../reducers/selectors";
import ProductShow from './product_show';

const mapStateToProps = (state, {match}) => {
    const productId = parseInt(match.params.productId);
    const product = selectProduct(state.entities, productId);
    const reviews = selectReviewsForProduct(state.entities, product);
    const sessionId = state.session.id;
    return {
        productId,
        product,
        reviews,
        sessionId
    };
};

const mapDispatchToProps = (dispatch) => ({
    fetchProduct: id => dispatch(fetchProduct(id)),
    fetchCart: (id, sessionId) => dispatch(fetchCart(id, sessionId)),
    createCartItem: (cart_item) => dispatch(createCartItem(cart_item))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProductShow);