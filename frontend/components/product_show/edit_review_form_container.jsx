import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchReview, updateReview } from '../../actions/product_actions.js';
import ReviewForm from './review_form';

class EditReviewForm extends React.Component {
    componentDidMount() {
        this.props.fetchReview(this.props.match.params.reviewId);
    }

    render() {
        const { action, formType, review } = this.props;

        if(!review) return null;
        return (
            <ReviewForm 
                action={action}
                formType={formType}
                review={review}
            />
        );
    }
}

const mapStateToProps = (state, ownProps) => ({
    review: state.entities.reviews[ownProps.match.params.reviewId],
    formType: 'Edit Review'
});

const mapDispatchToProps = (dispatch) => ({
    fetchReview: reviewId => dispatch(fetchReview(reviewId)),
    action: review => dispatch(updateReview(review))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(EditReviewForm));