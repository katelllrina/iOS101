/*
 Simplify Uber Raiting
 
 Old: 1-5 star
 New: Like/Dislike
 
 */

// like: 1, dislike: 0 => 5
// like: 1, dislike: 1 => 3
// like: 10, dislike: 3 => 4.0768
func uberRating(likeCount: Int, dislikeCount: Int) -> Double {
    if likeCount == 0 && dislikeCount == 0 {
        return 0
    }
    // 1. Find total count (like + dislike)
    // 2. Find percentage (like / total)
    // 3. Find proportion from 4
    // 4. Add 1
    let totalCount = likeCount + dislikeCount
    let percentage = Double(likeCount) / Double(totalCount)
    let proportion = percentage * 4
    let rating = proportion + 1
    return rating
}
