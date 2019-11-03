test_that("db loading works", {
    con = get_db()

    expect_equal(class(con)[1], "SQLiteConnection")
})
