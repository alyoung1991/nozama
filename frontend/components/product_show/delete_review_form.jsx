import React from 'react';
import { FaStar } from 'react-icons/fa';

class DeleteReviewForm extends React.Component {
    constructor(props){
        super(props);
        this.state = this.props.review;

        this.navigateToProductShow = this.navigateToProductShow.bind(this);
        this.deleteReview = this.deleteReview.bind(this);
        document.body.scrollTop = document.documentElement.scrollTop = 0
    }

    componentDidMount() {
        this.props.fetchReview(this.props.match.params.reviewId);
        this.props.fetchProduct(this.props.match.params.productId);
    }

    navigateToProductShow() {
        const url = `/products/${this.props.match.params.productId}`
        this.props.history.push(url);
        document.body.scrollTop = document.documentElement.scrollTop = 0;
    }

    deleteReview(){
        this.props.deleteReview(this.props.review)
            .then(this.props.history.goBack);
    }

    render(){
        const { review } = this.props;
        if(!review){
            return null;
        }
        return (
            <div className="delete-review-form-container">
                <div className="delete-review-form">
                    <div className="delete-review-sub-container">
                        <div className="delete-review-form-heading"><i className="fas fa-exclamation-triangle"></i>Are you sure you want to delete your review?</div>
                        <div className="delete-review-form-btns-container">
                            <button onClick={this.navigateToProductShow} className="no-btn">No</button>
                            <button onClick={this.deleteReview} className="yes-btn">Yes</button>
                        </div>
                    </div>
                    <div className="delete-review-form-review-info">
                        <div className="review-info-row">
                            <div className="delete-review-form-review-rating">
                                {[...Array(5)].map((star, i) => {
                                    const ratingValue = i + 1;
                                    return (
                                        <FaStar 
                                            key={i}
                                            className="star" 
                                            color={ratingValue <= ( review.rating ) ? "#ffa41b" : "#c9c9c9"} 
                                            size={15}
                                        />
                                    );
                                })}
                            </div>
                            <div className="delete-review-form-review-headline">{review.headline}</div>
                        </div>
                        <div className="delete-review-form-review-body">{review.body}</div>
                    </div>
                </div>
            </div>
        );
    }
}

export default DeleteReviewForm;