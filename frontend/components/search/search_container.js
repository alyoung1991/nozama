import { connect } from "react-redux";
import { updateFilter } from "../../actions/filter_actions";
import { asArray } from '../../reducers/selectors';
import Search from "./search";

const mapStateToProps = (state) => ({
    products: asArray(state.entities),
    department: state.ui.filters.department
})

const mapDispatchToProps = (dispatch) => ({
    updateFilter: (filter, value) => dispatch(updateFilter(filter, value))
})

export default connect(mapStateToProps, mapDispatchToProps)(Search);