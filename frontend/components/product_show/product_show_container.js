import { connect } from "react-redux";
import { fetchProduct } from "../../actions/product_actions";
import { selectProduct, selectReviewsForProduct } from "../../reducers/selectors";
import ProductShow from './product_show';

const mapStateToProps = (state, {match}) => {
    const productId = parseInt(match.params.productId);
    const product = selectProduct(state.entities, productId);
    const reviews = selectReviewsForProduct(state.entities, product);
    return {
        productId,
        product,
        reviews
    };
};

const mapDispatchToProps = (dispatch) => ({
    fetchProduct: id => dispatch(fetchProduct(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProductShow);