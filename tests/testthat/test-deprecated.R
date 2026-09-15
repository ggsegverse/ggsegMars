describe("marsatlas_cortical", {
  it("warns and returns the renamed atlas", {
    expect_snapshot(x <- marsatlas_cortical())
    expect_identical(x, mars_cortical())
  })
})

describe("marsatlas_subcortical", {
  it("warns and returns the renamed atlas", {
    expect_snapshot(x <- marsatlas_subcortical())
    expect_identical(x, mars_subcortical())
  })
})
