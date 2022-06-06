# Install site and everything
FROM composer as vendor

COPY composer.json composer.json
COPY composer.lock composer.lock
#COPY load.environment.php load.environment.php
#COPY scripts/ scripts/
COPY web/ web/

# Install only required packages (no dev-require)
RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-dev \
    --prefer-dist

FROM webdevops/php-nginx:7.4

# Copy precompiled codebase into the container.
COPY --from=vendor /app/ /var/www/html/
