import io.gatling.core.Predef._
import io.gatling.http.Predef._
import scala.concurrent.duration._

class LoadSimulation extends Simulation {

  val httpConf = http
    .baseUrl("http://ctscya.davidjeddy.com.s3.amazonaws.com")
    .doNotTrackHeader("1")
    .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")

  val scn = scenario("LoadSimulation")
    .exec(http("request_1")
      .get("/index.html"))
    .pause(5)

  setUp(
    scn.inject(
      rampUsers(1000) during(15 seconds)
    )
  ).protocols(httpConf)
}