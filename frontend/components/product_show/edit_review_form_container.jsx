import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchReview, fetchProduct, updateReview } from '../../actions/product_actions.js';
import ReviewForm from './review_form';

class EditReviewForm extends React.Component {
    componentDidMount() {
        this.props.fetchReview(this.props.match.params.reviewId);
        this.props.fetchProduct(this.props.match.params.productId);
    }

    render() {
        const { action, formType, review, product } = this.props;

        if(!review) return null;
        return (
            <ReviewForm 
                action={action}
                formType={formType}
                review={review}
                product={product}
            />
        );
    }
}

const mapStateToProps = (state, ownProps) => ({
    review: state.entities.reviews[ownProps.match.params.reviewId],
    product: state.entities.products[ownProps.match.params.productId],
    formType: 'Edit Review'
});

const mapDispatchToProps = (dispatch) => ({
    fetchReview: reviewId => dispatch(fetchReview(reviewId)),
    fetchProduct: id => dispatch(fetchProduct(id)),
    action: review => dispatch(updateReview(review))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(EditReviewForm));