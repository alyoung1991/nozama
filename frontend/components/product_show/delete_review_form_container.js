import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { deleteReview } from '../../actions/product_actions.js';
import DeleteReviewForm from './delete_review_form';

const mapStateToProps = (state, ownProps) => ({
    review: state.entities.reviews[ownProps.match.params.reviewId]
});

const mapDispatchToProps = (dispatch) => ({
    fetchReview: reviewId => dispatch(fetchReview(reviewId)),
    deleteReview: review => dispatch(deleteReview(review))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(DeleteReviewForm));