module github.com/fluxcd/flux

go 1.15

// remove when https://github.com/docker/distribution/pull/2905 is released.
// Update: on 2021-02-25 this has been merged, 2.7.2 should include it soon!
replace github.com/docker/distribution => github.com/fluxcd/distribution v0.0.0-20190419185413-6c9727e5e5de

// fix go-autorest ambiguous import caused by sops
// sops needs to update their deps ref: https://github.com/kubernetes/client-go/issues/628
replace github.com/Azure/go-autorest => github.com/Azure/go-autorest v12.2.0+incompatible

// transitive requirement from Helm Operator
replace (
	github.com/docker/docker => github.com/docker/docker v0.7.3-0.20190327010347-be7ac8be2ae0
	github.com/fluxcd/helm-operator => github.com/fluxcd/helm-operator v1.2.0
	github.com/fluxcd/helm-operator/pkg/install => github.com/fluxcd/helm-operator/pkg/install v0.0.0-20200213151218-f7e487142b46
)

// Pin kubernetes dependencies to 1.17.17
replace (
	k8s.io/api => k8s.io/api v0.17.17
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.17.17
	k8s.io/apimachinery => k8s.io/apimachinery v0.17.17
	k8s.io/client-go => k8s.io/client-go v0.17.17
	k8s.io/code-generator => k8s.io/code-generator v0.17.17
)

// github.com/fluxcd/flux/pkg/install lives in this very repository, so use that
replace github.com/fluxcd/flux/pkg/install => ./pkg/install

require (
	github.com/Azure/azure-sdk-for-go v38.0.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest v0.9.3 // indirect
	github.com/Azure/go-autorest/autorest/adal v0.8.1 // indirect
	github.com/Jeffail/gabs v1.4.0
	github.com/Masterminds/semver/v3 v3.0.3
	github.com/Microsoft/go-winio v0.4.16 // indirect
	github.com/aws/aws-sdk-go v1.33.18
	github.com/bradfitz/gomemcache v0.0.0-20190329173943-551aad21a668
	github.com/cheggaaa/pb/v3 v3.0.2
	github.com/containerd/continuity v0.0.0-20210208174643-50096c924a4e // indirect
	github.com/containerd/stargz-snapshotter/estargz v0.4.1 // indirect
	github.com/docker/cli v20.10.3+incompatible // indirect
	github.com/docker/distribution v2.7.1+incompatible
	github.com/docker/docker v20.10.3+incompatible // indirect
	github.com/evanphx/json-patch v4.9.0+incompatible
	github.com/fluxcd/flux/pkg/install v0.0.0-00010101000000-000000000000
	github.com/fluxcd/helm-operator v1.2.0
	github.com/ghodss/yaml v1.0.0
	github.com/go-kit/kit v0.9.0
	github.com/golang/gddo v0.0.0-20190312205958-5a2505f3dbf0
	github.com/google/go-cmp v0.5.4 // indirect
	github.com/google/go-containerregistry v0.4.0
	github.com/google/go-github/v28 v28.1.1
	github.com/gorilla/mux v1.7.3
	github.com/gorilla/websocket v1.4.2
	github.com/imdario/mergo v0.3.8
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/magefile/mage v1.11.0 // indirect
	github.com/opencontainers/go-digest v1.0.0
	github.com/opentracing-contrib/go-stdlib v1.0.0 // indirect
	github.com/pkg/errors v0.9.1
	github.com/pkg/term v0.0.0-20190109203006-aa71e9d9e942
	github.com/prometheus/client_golang v1.7.1
	github.com/prometheus/client_model v0.2.0
	github.com/ryanuber/go-glob v1.0.0
	github.com/sirupsen/logrus v1.8.0 // indirect
	github.com/spf13/cobra v1.1.3
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.5.1
	github.com/weaveworks/common v0.0.0-20190410110702-87611edc252e
	github.com/weaveworks/go-checkpoint v0.0.0-20170503165305-ebbb8b0518ab
	github.com/whilp/git-urls v0.0.0-20160530060445-31bac0d230fa
	github.com/xeipuuv/gojsonschema v1.1.0
	go.mozilla.org/sops/v3 v3.6.1
	golang.org/x/net v0.0.0-20201110031124-69a78807bb2b // indirect
	golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c // indirect
	golang.org/x/sys v0.0.0-20210225134936-a50acf3fe073
	golang.org/x/time v0.0.0-20200416051211-89c76fbcd5d1
	gopkg.in/yaml.v2 v2.4.0
	gotest.tools/v3 v3.0.3 // indirect
	k8s.io/api v0.19.8
	k8s.io/apiextensions-apiserver v0.17.4
	k8s.io/apimachinery v0.19.8
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/klog v1.0.0
)
