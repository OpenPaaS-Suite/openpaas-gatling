package com.linagora.openpaas.gatling.core

import com.linagora.openpaas.gatling.provisionning.Authentication.withAuth
import com.linagora.openpaas.gatling.provisionning.SessionKeys._
import io.gatling.core.Predef._
import io.gatling.http.Predef._

object UsersSteps {
  val statusCode = "statusCode"

  def findUserIdByUsername =
    withAuth(
      http("findUserIdByUsername")
        .get(s"/api/users")
        .queryParam("email", s"$${$OtherUsername}")
        .check(status.in(200, 304).saveAs(statusCode))
        .check(jsonPath("$[0]._id").saveAs(OtherUserId)))


  def getOtherUserProfile =
    withAuth(
      http("getUser")
        .get(s"/api/users/$${$OtherUserId}")
        .check(status in (200, 304)))

}

