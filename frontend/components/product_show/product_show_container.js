import { connect } from "react-redux";
import { fetchProduct } from "../../actions/product_actions";
import { selectProduct } from "../../reducers/selectors";
import ProductShow from './product_show';

const mapStateToProps = (state, {match}) => ({
    productId: match.params.productId,
    product: selectProduct(state.entities.products, match.params.productId)
});

const mapDispatchToProps = (dispatch) => ({
    fetchProduct: id => dispatch(fetchProduct(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProductShow);