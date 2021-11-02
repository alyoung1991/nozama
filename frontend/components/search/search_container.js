import { connect } from "react-redux"
import { fetchProducts } from "../../actions/product_actions";
import { updateFilter } from "../../actions/filter_actions";
import Search from "./search";

const mapStateToProps = (state) => ({
    products: Object.values(state.entities.products)
})

const mapDispatchToProps = (dispatch) => ({
    fetchProducts: () => dispatch(fetchProducts()),
    updateSearchQuery: (query) => dispatch(updateFilter(query))
})

export default connect(mapStateToProps, mapDispatchToProps)(Search);