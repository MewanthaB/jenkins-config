argocd app create qa-7-inc-activity-distributor --repo git@github.com:IncentivioInc/inc-activity-distributor.git --revision sc-220063_27 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-activity-distributor
argocd app create qa-7-incentivio-admin-api --repo git@github.com:IncentivioInc/incentivio-admin-api.git --revision sc-220063_58 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-incentivio-admin-api
argocd app create qa-7-inc-analytics-service --repo git@github.com:IncentivioInc/inc-analytics-service.git --revision sc-220063_119 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-analytics-service
argocd app create qa-7-incentivio-batch --repo git@github.com:IncentivioInc/incentivio-batch.git --revision sc-220063_50 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-incentivio-batch
argocd app create qa-7-incentivio-churn-service --repo git@github.com:IncentivioInc/incentivio-churn-service.git --revision sc-220063_119 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-incentivio-churn-service
argocd app create qa-7-inc-condel-doordash --repo git@github.com:IncentivioInc/inc-condel-doordash.git --revision sc-220063_16 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-condel-doordash
argocd app create qa-7-incentivio-connect-domain --repo git@github.com:IncentivioInc/incentivio-connect-domain.git --revision sc-220063_63 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-incentivio-connect-domain
argocd app create qa-7-inc-connector-toast --repo git@github.com:IncentivioInc/inc-connector-toast.git --revision sc-220063_14 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-connector-toast
argocd app create qa-7-inc-conpay-heartland --repo git@github.com:IncentivioInc/inc-conpay-heartland.git --revision sc-220063_86 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpay-heartland
argocd app create qa-7-inc-conpay-moneris --repo git@github.com:IncentivioInc/inc-conpay-moneris.git --revision sc-220063_83 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpay-moneris
argocd app create qa-7-inc-conpay-spreedly --repo git@github.com:IncentivioInc/inc-conpay-spreedly.git --revision sc-220063_83 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpay-spreedly
argocd app create qa-7-inc-conpay-stripe --repo git@github.com:IncentivioInc/inc-conpay-stripe.git --revision sc-220063_87 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpay-stripe
argocd app create qa-7-inc-conpay-vantiv-omni --repo git@github.com:IncentivioInc/inc-conpay-vantiv-omni.git --revision sc-220063_75 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpay-vantiv-omni
argocd app create qa-7-inc-conpay-vantiv --repo git@github.com:IncentivioInc/inc-conpay-vantiv.git --revision sc-220063_80 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpay-vantiv
argocd app create qa-7-inc-conpos-brink --repo git@github.com:IncentivioInc/inc-conpos-brink.git --revision sc-220063_67 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpos-brink
argocd app create qa-7-inc-conpos-lightspeed --repo git@github.com:IncentivioInc/inc-conpos-lightspeed.git --revision sc-220063_76 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpos-lightspeed
argocd app create qa-7-inc-conpos-silverware --repo git@github.com:IncentivioInc/inc-conpos-silverware.git --revision sc-220063_75 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpos-silverware
argocd app create qa-7-inc-conpos-square --repo git@github.com:IncentivioInc/inc-conpos-square.git --revision sc-220063_8 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpos-square
argocd app create qa-7-inc-email-bounce-manager --repo git@github.com:IncentivioInc/inc-email-bounce-manager.git --revision sc-220063_69 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-email-bounce-manager
argocd app create qa-7-inc-email-connector --repo git@github.com:IncentivioInc/inc-email-connector.git --revision sc-220063_73 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-email-connector
argocd app create qa-7-inc-external-users-import --repo git@github.com:IncentivioInc/inc-external-users-import.git --revision sc-220063_7 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-external-users-import
argocd app create qa-7-inc-failure-notifier --repo git@github.com:IncentivioInc/inc-failure-notifier.git --revision sc-220063_70 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-failure-notifier
argocd app create qa-7-inc-gift-ach-transfer-service --repo git@github.com:IncentivioInc/inc-gift-ach-transfer-service.git --revision sc-220063_80 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-gift-ach-transfer-service
argocd app create qa-7-inc-giftcard-service --repo git@github.com:IncentivioInc/inc-giftcard-service.git --revision argocd-workaround_2 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-giftcard-service
argocd app create qa-7-incentivio-media --repo git@github.com:IncentivioInc/incentivio-media.git --revision sc-220063_53 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-incentivio-media
argocd app create qa-7-inc-menu-service --repo git@github.com:IncentivioInc/inc-menu-service.git --revision sc-220063_64 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-menu-service
argocd app create qa-7-incentivio-message-router --repo git@github.com:IncentivioInc/incentivio-message-router.git --revision sc-220063_62 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-incentivio-message-router
argocd app create qa-7-inc-mobile-api --repo git@github.com:IncentivioInc/inc-mobile-api.git --revision sc-220063_55 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-mobile-api
argocd app create qa-7-incentivio-offer-distributor --repo git@github.com:IncentivioInc/incentivio-offer-distributor.git --revision sc-220063_54 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-incentivio-offer-distributor
argocd app create qa-7-inc-offers-domain-boot --repo git@github.com:IncentivioInc/inc-offers-domain-boot.git --revision sc-220063_62 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-offers-domain-boot
argocd app create qa-7-inc-operational-metrics --repo git@github.com:IncentivioInc/inc-operational-metrics.git --revision sc-220063_69 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-operational-metrics
argocd app create qa-7-inc-ordering-service --repo git@github.com:IncentivioInc/inc-ordering-service.git --revision sc-220063_62 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-ordering-service
argocd app create qa-7-inc-partnerapi-gateway --repo git@github.com:IncentivioInc/inc-partnerapi-gateway.git --revision sc-220063_9 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-partnerapi-gateway
argocd app create qa-7-inc-payments --repo git@github.com:IncentivioInc/inc-payments.git --revision sc-220063_55 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-payments
argocd app create qa-7-inc-payrisk-manager --repo git@github.com:IncentivioInc/inc-payrisk-manager.git --revision sc-220063_2 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-payrisk-manager
argocd app create qa-7-inc-persona-processor --repo git@github.com:IncentivioInc/inc-persona-processor.git --revision sc-220063_5 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-persona-processor
argocd app create qa-7-inc-referrals --repo git@github.com:IncentivioInc/inc-referrals.git --revision sc-220063_3 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-referrals
argocd app create qa-7-inc-reports --repo git@github.com:IncentivioInc/inc-reports.git --revision sc-220063_51 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-reports
argocd app create qa-7-inc-transactions --repo git@github.com:IncentivioInc/inc-transactions.git --revision sc-220063_56 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-transactions
argocd app create qa-7-inc-user-domain-boot --repo git@github.com:IncentivioInc/inc-user-domain-boot.git --revision sc-220063_52 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-user-domain-boot
argocd app create qa-7-inc-wallet --repo git@github.com:IncentivioInc/inc-wallet.git --revision sc-220063_1 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-wallet
argocd app create qa-7-inc-sms-connector --repo git@github.com:IncentivioInc/inc-sms-connector.git --revision sc-220063_2 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-sms-connector
argocd app create qa-7-inc-loyalty-boot --repo git@github.com:IncentivioInc/inc-loyalty-boot.git --revision sc-220063_9 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-loyalty-boot
argocd app create qa-7-inc-surveys --repo git@github.com:IncentivioInc/inc-surveys.git --revision sc-220063_4 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-surveys
argocd app create qa-7-inc-conpay-braintree --repo git@github.com:IncentivioInc/inc-conpay-braintree.git --revision sc-220063_1 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-conpay-braintree
argocd app create qa-7-inc-connector-incentivoorders --repo git@github.com:IncentivioInc/inc-connector-incentivoorders.git --revision sc-220063_3 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-connector-incentivoorders
argocd app create qa-7-inc-customer-support-service --repo git@github.com:IncentivioInc/inc-customer-support-service.git --revision sc-220063_6 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-customer-support-service
argocd app create qa-7-inc-event-store --repo git@github.com:IncentivioInc/inc-event-store.git --revision sc-220063_6 --project inc-qa-7 --path deploy/kube-manifests-qa-argo --dest-namespace inc-qa --dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com --directory-recurse --upsert
argocd app sync qa-7-inc-event-store
