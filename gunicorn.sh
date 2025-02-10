#!/usr/bin/env bash
which conda
which python
python -V

export $(cat .env)
export DEBUG=1
export CAPTURE_UNHANDLED_EXCEPTION=1

echo MATHESAR_DIR=$MATHESAR_DIR
echo POSTGRES_HOST=$POSTGRES_HOST
echo

echo CAPTURE_UNHANDLED_EXCEPTION=$CAPTURE_UNHANDLED_EXCEPTION
echo MODE=$MODE
echo DEBUG=$DEBUG

gunicorn config.wsgi:application --log-level DEBUG

