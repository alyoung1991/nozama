import React from 'react';
import { withRouter } from 'react-router-dom';
import StarRating from './star_rating';

class ReviewForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            headline: '',
            body: '',
            rating: 5
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.navigateToProductShow = this.navigateToProductShow.bind(this);
    }

    navigateToProductShow() {
        const url = `/products/${this.props.match.params.productId}`
        this.props.history.push(url);
    }

    handleSubmit(e) {
        e.preventDefault();
        const productId = parseInt(this.props.match.params.productId);
        const review = Object.assign({}, this.state, {
            product_id: productId
        });
        this.props.createReview(review);
        this.navigateToProductShow();
    }

    handelInput(field) {
        return e => this.setState({ [field]: e.currentTarget.value });
    }

    render() {
        return (
            <div className="review-form">
                <form onSubmit={this.handleSubmit}>
                <label>Rating</label>
                <br/>
                <input
                    type="number"
                    value={this.state.rating}
                    onChange={this.handelInput("rating")}
                />
                {/* <StarRating /> */}
                <br/>

                <label>Headline</label>
                <br/>
                <input
                    type="text"
                    value={this.state.headline}
                    onChange={this.handelInput("headline")}
                />
                <br/>

                <label>Body</label>
                <br/>

                <textarea
                    cols="30"
                    rows="10"
                    value={this.state.body}
                    onChange={this.handelInput("body")}
                />
                <br/>
                <input type="submit" />
                </form>
                <button onClick={this.navigateToProductShow}>Cancel</button>
            </div>
        );
    }
}

export default withRouter(ReviewForm);
