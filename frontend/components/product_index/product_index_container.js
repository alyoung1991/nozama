import { connect } from "react-redux";
import { fetchProducts } from "../../actions/product_actions";
import ProductIndex from "./product_index";

const mapStateToProps = (state) => ({
    products: Object.values(state.entities.products)
})

const mapDispatchToProps = (dispatch) => ({
    fetchProducts: (filters) => dispatch(fetchProducts(filters))
})

export default connect(mapStateToProps, mapDispatchToProps)(ProductIndex);