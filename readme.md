# sdlc-trial-163

A throwaway repo for trialling claude-sdlc's `SDLC_CHECK_AFTER_REVIEW` setting (stickleprojects/claude-sdlc#163). `make test` only sleeps, standing in for a slow test suite. Delete the repo once the trial is reported.

## What the trial checks

1. A clean PR: `check` runs only after the Claude review, and its status satisfies branch protection.
2. A push while `check` is running: the old head's `check` is cancelled.
3. A PR the review flags: `check` waits and says why, until the `check` label runs it.
