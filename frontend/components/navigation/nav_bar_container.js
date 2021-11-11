import { connect } from 'react-redux';
import { updateFilter } from "../../actions/filter_actions";
import { createCart, fetchCart, deleteCart } from '../../actions/cart_actions';
import NavBar from './nav_bar';

const mapStateToProps = (state) => ({
    currentUser: state.entities.users[state.session.id],
    sessionId: state.session.id
});

const mapDispatchToProps = (dispatch) => ({
    updateFilter: (filter, value) => dispatch(updateFilter(filter, value)),
    fetchCart: (id, sessionId) => dispatch(fetchCart(id, sessionId))
})

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);