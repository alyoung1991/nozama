import { connect } from 'react-redux';
import { updateFilter } from "../../actions/filter_actions";
import NavBar from './nav_bar';

const mapStateToProps = (state) => ({
    currentUser: state.entities.users[state.session.id]
});

const mapDispatchToProps = (dispatch) => ({
    updateFilter: (filter, value) => dispatch(updateFilter(filter, value))
})

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);