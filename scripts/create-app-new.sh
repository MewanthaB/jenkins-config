argocd app create qa-7-inc-activity-distributor --repo git@github.com:IncentivioInc/inc-activity-distributor.git --revision sc-220063_5 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-analytics-service --repo git@github.com:IncentivioInc/inc-analytics-service.git --revision sc-220063_4 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-condel-doordash --repo git@github.com:IncentivioInc/inc-condel-doordash.git --revision sc-220063_4 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-connector-toast --repo git@github.com:IncentivioInc/inc-connector-toast.git --revision sc-220063_6 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpay-heartland --repo git@github.com:IncentivioInc/inc-conpay-heartland.git --revision sc-220063_86 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpay-moneris --repo git@github.com:IncentivioInc/inc-conpay-moneris.git --revision sc-220063_9 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpay-spreedly --repo git@github.com:IncentivioInc/inc-conpay-spreedly.git --revision sc-220063_9 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpay-stripe --repo git@github.com:IncentivioInc/inc-conpay-stripe.git --revision sc-220063_87 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpay-vantiv-omni --repo git@github.com:IncentivioInc/inc-conpay-vantiv-omni.git --revision sc-220063_9 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpay-vantiv --repo git@github.com:IncentivioInc/inc-conpay-vantiv.git --revision sc-220063_9 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpos-brink --repo git@github.com:IncentivioInc/inc-conpos-brink.git --revision sc-220063_67 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpos-lightspeed --repo git@github.com:IncentivioInc/inc-conpos-lightspeed.git --revision sc-220063_8 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpos-silverware --repo git@github.com:IncentivioInc/inc-conpos-silverware.git --revision sc-220063_9 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-conpos-square --repo git@github.com:IncentivioInc/inc-conpos-square.git --revision sc-220063_8 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-email-bounce-manager --repo git@github.com:IncentivioInc/inc-email-bounce-manager.git --revision sc-220063_69 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-email-connector --repo git@github.com:IncentivioInc/inc-email-connector.git --revision sc-220063_73 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-external-users-import --repo git@github.com:IncentivioInc/inc-external-users-import.git --revision sc-220063_7 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-failure-notifier --repo git@github.com:IncentivioInc/inc-failure-notifier.git --revision sc-220063_70 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-gift-ach-transfer-service --repo git@github.com:IncentivioInc/inc-gift-ach-transfer-service.git --revision sc-220063_80 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-giftcard-service --repo git@github.com:IncentivioInc/inc-giftcard-service.git --revision sc-220063_83 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-menu-service --repo git@github.com:IncentivioInc/inc-menu-service.git --revision sc-220063_8 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-mobile-api --repo git@github.com:IncentivioInc/inc-mobile-api.git --revision sc-220063_6 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-operational-metrics --repo git@github.com:IncentivioInc/inc-operational-metrics.git --revision sc-220063_67 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-ordering-service --repo git@github.com:IncentivioInc/inc-ordering-service.git --revision sc-220063_62 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-partnerapi-gateway --repo git@github.com:IncentivioInc/inc-partnerapi-gateway.git --revision sc-220063_3 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-payments --repo git@github.com:IncentivioInc/inc-payments.git --revision sc-220063_7 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-payrisk-manager --repo git@github.com:IncentivioInc/inc-payrisk-manager.git --revision sc-220063_2 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-reports --repo git@github.com:IncentivioInc/inc-reports.git --revision sc-220063_51 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-transactions --repo git@github.com:IncentivioInc/inc-transactions.git --revision sc-220063_7 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-user-domain-boot --repo git@github.com:IncentivioInc/inc-user-domain-boot.git --revision sc-220063_6 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse
argocd app create qa-7-inc-wallet --repo git@github.com:IncentivioInc/inc-wallet.git --revision sc-220063_1 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse