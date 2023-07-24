

rm -r ./replacement_packages/cubejs-api-gateway
rm -r ./replacement_packages/cubejs-server-core
mkdir -r ./replacement_packages/cubejs-schema-compiler

mkdir -p ./replacement_packages/cubejs-api-gateway/
mkdir -p ./replacement_packages/cubejs-server-core/
mkdir -p ./replacement_packages/cubejs-schema-compiler/


cp -r ../cubejs-api-gateway/dist/src/* ./replacement_packages/cubejs-api-gateway/
cp -r ../cubejs-server-core/dist/src/* ./replacement_packages/cubejs-server-core/
cp -r ../cubejs-schema-compiler/dist/src/* ./replacement_packages/cubejs-schema-compiler/


docker buildx build --platform linux/amd64 -t vinamilkcorp/cube:1.0.5 -f latest.Dockerfile .
