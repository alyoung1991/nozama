import React from 'react';
import { connect } from 'react-redux';
import { deleteReview, updateReview } from '../../actions/product_actions';
import { FaStar } from 'react-icons/fa';
import { ReviewLink } from '../../util/link_util';
import EditReviewFormContainer from './edit_review_form_container';

const Review = ({ review, author, currentUser, productId, updateReview, destroyReview }) => {
    const { id, rating, body, headline, created_at } = review;
    const dateArray = new Date(created_at).toDateString().split(' ');
    const dateString = `${dateArray[1]} ${dateArray[2]}, ${dateArray[3]}`;
    const { name } = author;
    return (
        <div className="review-item">
            <div className="review-author-section">
                <div className="review-author-avatar"><i className="fas fa-user-circle"></i></div>
                <div className="review-author">{name.split(' ')[0]}</div>
            </div>
            <div className="review-headline">
                <div className="review-rating">
                    <div className="review-stars">
                        {[...Array(5)].map((star, i) => {
                            const ratingValue = i + 1;

                            return (
                                <FaStar 
                                    key={i}
                                    className="star" 
                                    color={ratingValue <= ( rating ) ? "#ffa41b" : "#c9c9c9"} 
                                    size={15}
                                />
                            );
                        })}
                    </div>
                </div>
                <div className="review-title">
                    {headline}
                </div>
            </div>
            <div className="review-date">Reviewed on {dateString}</div>
            <div className="review-verified-purchase">Verified Purchase</div>
            <div className="review-body">{body}</div>
            {(currentUser && currentUser.id === author.id) ? (
                <div className="review-crud-buttons">
                    <ReviewLink
                        className="edit-review-button"
                        component={EditReviewFormContainer}
                        to={`/products/${productId}/review/${id}/edit`}
                        label="Edit"
                    />
                    <button className="delete-review-button" onClick={() => destroyReview(review)}>Delete</button>
                    <div className="crud-button-border"></div>
                </div>
                ) : (<></>)
            }
        </div>
    );
};

const mapStateToProps = (state, { review }) => {
    return {
        author: state.entities.users[review.author_id],
        currentUser: state.entities.users[state.session.id],
        productId: review.product_id
    };
};

const mapDispatchToProps = (dispatch) => ({
    updateReview: (review) => dispatch(updateReview(review)),
    destroyReview: (review) => dispatch(deleteReview(review))
})

export default connect(mapStateToProps, mapDispatchToProps)(Review);