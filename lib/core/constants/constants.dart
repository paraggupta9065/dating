String baseUrl = "http://tru-dating.vaininnovation.in/";

String getFullUrl(String path) {
  return baseUrl + path + "/";
}

// Define variables for each endpoint
String getDataUrl = getFullUrl("");
String postDataUrl = getFullUrl("srote-profile");
String updateDataUrl = getFullUrl("");
String deleteDataUrl = getFullUrl("info?id=1");
String signUpUrl = getFullUrl("api/sign-up");
String signInUrl = getFullUrl("api/sign-in");
String updatePasswordUrl = getFullUrl("api/update-password/Viraj Rajage");
String fetchProfile1Url = getFullUrl("api/fetch-profile1");
String createUserProfile1Url = getFullUrl("api/create-user-profile1");
String updateProfile1Url = getFullUrl("api/update-profile1");
String usersNearbyUrl =
    getFullUrl("api/users/nearby?latitude=40.712800&longitude=-78.00600");
String uploadVideoUrl = getFullUrl("api/upload-video");
String deleteVideo1Url = getFullUrl("api/delete-video/1");
String likeUser2Url = getFullUrl("api/like-user/2");
String fetchChatChannelsUrl = getFullUrl("api/fetch-chat-channels");
String fetchUnreadMessageCountUrl =
    getFullUrl("api/fetch-unread-message-count");
String fetchChatMessages1Url = getFullUrl("api/fetch-chat-messages/1");
String checkChatChannel1Url = getFullUrl("api/check-chat-channel/1?user_id=1");
String sendMessage1Url = getFullUrl("api/send-message/1");
String fetchSubscription2Url = getFullUrl("api/fetch-subscription/2");
String createSubscriptionUrl = getFullUrl("api/create-subscription");
String updateSubscription2Url = getFullUrl("api/update-subscription/2");
String deleteSubscription2Url = getFullUrl("api/delete-subscription/2");
String fetchUsersWhoILikedUrl = getFullUrl("api/fetch-users-who-i-liked");
String fetchUsersWhoLikedMeUrl = getFullUrl("api/fetch-users-who-liked-me");
String fetchCurrentSubscriptionPlansUrl =
    getFullUrl("api/fetch-current-subscription-plans");
String fetchSubscribedUsersUrl = getFullUrl("api/fetch-subscribed-users");
String fetchAllUsersUrl = getFullUrl("api/fetch-all-users");
String fetchUnsubscribedUsersUrl = getFullUrl("api/fetch-unsubscribed-users");
String purchaseSubscriptionUrl = getFullUrl("api/purchase-subscription");
String forgotPasswordUrl = getFullUrl("api/forgot-password");
String loginMobileNumberUrl = getFullUrl("api/login/mobile-number");
String loginEmailUrl = getFullUrl("api/login/email");
String loginGoogleUrl = getFullUrl("api/login/google");
