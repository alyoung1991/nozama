import React from 'react';
import { connect } from 'react-redux';

const Review = ({ review, author }) => {
    const { rating, body, headline, created_at } = review;
    const dateArray = new Date(created_at).toDateString().split(' ');
    const dateString = `${dateArray[1]} ${dateArray[2]}, ${dateArray[3]}`;
    const { name } = author;
    return (
        <div className="review-item">
            <div className="review-author-section">
                <div className="review-author-avatar"><i className="fas fa-user-circle"></i></div>
                <div className="review-author">{name.split(' ')[0]}</div>
            </div>
            <div className="review-headline"><span className="review-rating">{rating}</span> {headline}</div>
            <div className="review-date">Reviewed on {dateString}</div>
            <div className="review-verified-purchase">Verified Purchase</div>
            <div className="review-body">{body}</div>
        </div>
    );
};

const mapStateToProps = ({entities: { users }}, { review }) => {
    return {
        author: users[review.author_id]
    };
};

export default connect(mapStateToProps)(Review);