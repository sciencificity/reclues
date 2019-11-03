
# Test that the dimensions of the tables are as expected
test_that("data loads correctly", {
    expect_equal(dim(person)[1], 10011)
    expect_equal(dim(person)[2], 6)
    expect_equal(dim(crime_scene_report)[1], 1228)
    expect_equal(dim(crime_scene_report)[2], 4)
    expect_equal(dim(get_fit_now_member)[1], 184)
    expect_equal(dim(get_fit_now_member)[2], 5)
    expect_equal(dim(get_fit_now_check_in)[1], 2703)
    expect_equal(dim(get_fit_now_check_in)[2], 4)
    expect_equal(dim(drivers_license)[1], 10007)
    expect_equal(dim(drivers_license)[2], 9)
    expect_equal(dim(facebook_event_checkin)[1], 20011)
    expect_equal(dim(facebook_event_checkin)[2], 4)
    expect_equal(dim(income)[1], 7514)
    expect_equal(dim(income)[2], 2)
    expect_equal(dim(interview)[1], 4991)
    expect_equal(dim(interview)[2], 2)
})

