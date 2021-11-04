import { connect } from "react-redux";
import { updateFilter } from "../../actions/filter_actions";
import Search from "./search";

const mapStateToProps = (state) => ({
    products: Object.values(state.entities.products)
})

const mapDispatchToProps = (dispatch) => ({
    updateSearchQuery: (query) => dispatch(updateFilter(query))
})

export default connect(mapStateToProps, mapDispatchToProps)(Search);