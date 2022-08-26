FROM node:18

RUN npm install --global pnpm

WORKDIR /app

COPY package.json hello.js ./

ENV GITHUB_EVENT_PATH="/home/runner/work/_temp/_github_workflow/event.json" \
    GITHUB_ENV="/home/runner/work/_temp/_runner_file_commands/set_env_5af7e6f6-8a08-40c8-818d-12d5e73ded01" \
    GITHUB_EVENT_PATH="/home/runner/work/_temp/_github_workflow/event.json" \
    GITHUB_REPOSITORY_OWNER="Liu233w" \
    GITHUB_RETENTION_DAYS="90" \
    GITHUB_HEAD_REF="" \
    GITHUB_GRAPHQL_URL="https://api.github.com/graphql" \
    GITHUB_API_URL="https://api.github.com" \
    GITHUB_WORKFLOW="PoC of the problem" \
    GITHUB_RUN_ID="2930840083" \
    GITHUB_REF_TYPE="branch" \
    GITHUB_BASE_REF="" \
    GITHUB_ACTION_REPOSITORY="" \
    GITHUB_ACTION="__run" \
    GITHUB_RUN_NUMBER="3" \
    GITHUB_TRIGGERING_ACTOR="Liu233w" \
    GITHUB_REF_NAME="main" \
    GITHUB_REPOSITORY="Liu233w/pnpm-reading-github-event" \
    GITHUB_ACTION_REF="" \
    GITHUB_ACTIONS="true" \
    GITHUB_REF_PROTECTED="false" \
    GITHUB_WORKSPACE="/home/runner/work/pnpm-reading-github-event/pnpm-reading-github-event" \
    GITHUB_JOB="build" \
    GITHUB_SHA="37f0a8bbe3d4b8550d310636981efeb2f5a6962e" \
    GITHUB_RUN_ATTEMPT="1" \
    GITHUB_REF="refs/heads/main" \
    GITHUB_ACTOR="Liu233w" \
    GITHUB_PATH="/home/runner/work/_temp/_runner_file_commands/add_path_5af7e6f6-8a08-40c8-818d-12d5e73ded01" \
    GITHUB_EVENT_NAME="push" \
    GITHUB_SERVER_URL="https://github.com" \
    GITHUB_STEP_SUMMARY="/home/runner/work/_temp/_runner_file_commands/step_summary_5af7e6f6-8a08-40c8-818d-12d5e73ded01"

RUN pnpm test
