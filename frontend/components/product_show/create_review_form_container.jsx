import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { createReview } from '../../actions/product_actions.js';
import ReviewForm from './review_form';

const mapStateToProps = (state) => ({
    review: {
        headline: '',
        body: '',
        rating: 5
    },
    formType: 'Create Review'
});

const mapDispatchToProps = (dispatch) => ({
    action: review => dispatch(createReview(review))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ReviewForm));