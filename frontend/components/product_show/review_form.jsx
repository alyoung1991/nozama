import React from 'react';
import { withRouter } from 'react-router-dom';
import StarRating from './star_rating';

class ReviewForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.review;
        this.handleSubmit = this.handleSubmit.bind(this);
        this.navigateToProductShow = this.navigateToProductShow.bind(this);
        this.updateRating = this.updateRating.bind(this);
    }

    navigateToProductShow() {
        const url = `/products/${this.props.match.params.productId}`
        this.props.history.push(url);
    }

    handleRatingChange(rating){
        this.setState({rating: rating});
    }

    handleSubmit(e) {
        e.preventDefault();
        const productId = parseInt(this.props.match.params.productId);
        const review = Object.assign({}, this.state, {
            product_id: productId
        });
        this.props.action(review);
        this.navigateToProductShow();
    }

    handelInput(field) {
        return e => this.setState({ [field]: e.currentTarget.value });
    }

    updateRating(rating) {
        this.setState({ 'rating': rating });
    }

    render() {
        return (
            <div className="review-form-container">
                <form className="review-form" onSubmit={this.handleSubmit}>
                    <div className="review-form-heading">{this.props.formType}</div>
                    <div className="review-form-product-info">
                        <div className="review-form-product-img-container">
                            <img className="review-form-product-img" src={this.props.product.picture_url} alt="product-thumbnail" />
                        </div>
                        <div className="review-form-product">{this.props.product.name}</div>
                    </div>
                    <div className="review-form-overall-rating-section">
                        <div className="review-form-rating-heading">Overall rating</div>
                        {/* <input
                            type="number"
                            value={this.state.rating}
                            onChange={this.handelInput("rating")}
                        /> */}
                        <StarRating updateRating={this.updateRating} />
                    </div>

                    <div className="review-form-headline-section">
                        <div className="review-form-headline-heading">Add a headline</div>
                        <input
                            className="review-form-headline-input"
                            type="text"
                            value={this.state.headline}
                            onChange={this.handelInput("headline")}
                            placeholder="What's most important to know?"
                        />
                    </div>

                    <div className="review-form-body-section">
                        <div className="review-form-body-heading">Add a written review</div>

                        <textarea
                            className="review-form-body-input"
                            value={this.state.body}
                            onChange={this.handelInput("body")}
                            placeholder="What did you like or dislike? What did you use this product for?"
                        />
                    </div>
                    <div className="review-form-submit-button-section">
                        <input className="review-form-submit-button" type="submit" />
                    </div>
                </form>
            </div>
        );
    }
}

export default withRouter(ReviewForm);
