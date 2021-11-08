import { connect } from 'react-redux';
import NavBar from './nav_bar';

const mapStateToProps = (state) => ({
    currentUser: state.entities.users[state.session.id]
});

export default connect(mapStateToProps)(NavBar);