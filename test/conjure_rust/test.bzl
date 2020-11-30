load("@bazel_skylib//lib:unittest.bzl", "asserts", "analysistest")
load("//conjure_rust:conjure_rust.bzl", "conjure_rust_generate")

# ==== Check the provider contents ====

def _provider_contents_test_impl(ctx):
    env = analysistest.begin(ctx)

    target_under_test = analysistest.target_under_test(env)
    # If preferred, could pass these values as "expected" and "actual" keyword
    # arguments.
    # asserts.equals(env, "some value", target_under_test[MyInfo].val)

    # If you forget to return end(), you will get an error about an analysis
    # test needing to return an instance of AnalysisTestResultInfo.
    return analysistest.end(env)

# Create the testing rule to wrap the test logic. This must be bound to a global
# variable, not called in a macro's body, since macros get evaluated at loading
# time but the rule gets evaluated later, at analysis time. Since this is a test
# rule, its name must end with "_test".
provider_contents_test = analysistest.make(_provider_contents_test_impl)

# Macro to setup the test.
def _test_provider_contents():
    # Rule under test. Be sure to tag 'manual', as this target should not be
    # built using `:all` except as a dependency of the test.
    conjure_rust_generate(
        name = "provider_contents_subject",
        ir = "api.conjure.json",
        strip_prefix = "com.example.api",
        tags = ["manual"],
    )
    # Testing rule.
    provider_contents_test(name = "provider_contents_test",
                           target_under_test = ":provider_contents_subject")
    # Note the target_under_test attribute is how the test rule depends on
    # the real rule target.

# Entry point from the BUILD file; macro for running each test case's macro and
# declaring a test suite that wraps them together.
def myrules_test_suite(name):
    # Call all test functions and wrap their targets in a suite.
    _test_provider_contents()
    # ...

    native.test_suite(
        name = name,
        tests = [
            ":provider_contents_test",
            # ...
        ],
    )
