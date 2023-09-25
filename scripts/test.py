repos = [
    "git@github.com:IncentivioInc/inc-activity-distributor.git",
    "git@github.com:IncentivioInc/inc-analytics-service.git",
    "git@github.com:IncentivioInc/incentivio-batch.git",
    "git@github.com:IncentivioInc/incentivio-churn-service.git",
    "git@github.com:IncentivioInc/incentivio-client-domain-boot.git",
    "git@github.com:IncentivioInc/inc-condel-doordash.git",
    "git@github.com:IncentivioInc/incentivio-connect-domain.git",
    "git@github.com:IncentivioInc/inc-connector-toast.git",
    "git@github.com:IncentivioInc/inc-conpay-heartland.git",
    "git@github.com:IncentivioInc/inc-conpay-moneris.git",
    "git@github.com:IncentivioInc/inc-conpay-spreedly.git",
    "git@github.com:IncentivioInc/inc-conpay-stripe.git",
    "git@github.com:IncentivioInc/inc-conpay-vantiv-omni.git",
    "git@github.com:IncentivioInc/inc-conpay-vantiv.git",
    "git@github.com:IncentivioInc/inc-conpos-brink.git",
    "git@github.com:IncentivioInc/inc-conpos-lightspeed.git",
    "git@github.com:IncentivioInc/inc-conpos-silverware.git",
    "git@github.com:IncentivioInc/inc-conpos-square.git",
    "git@github.com:IncentivioInc/inc-email-bounce-manager.git",
    "git@github.com:IncentivioInc/inc-email-connector.git",
    "git@github.com:IncentivioInc/inc-external-users-import.git",
    "git@github.com:IncentivioInc/inc-failure-notifier.git",
    "git@github.com:IncentivioInc/inc-gift-ach-transfer-service.git",
    "git@github.com:IncentivioInc/inc-giftcard-service.git",
    "git@github.com:IncentivioInc/incentivio-media.git",
    "git@github.com:IncentivioInc/inc-menu-service.git",
    "git@github.com:IncentivioInc/incentivio-message-router.git",
    "git@github.com:IncentivioInc/inc-mobile-api.git",
    "git@github.com:IncentivioInc/incentivio-offer-distributor.git",
    "git@github.com:IncentivioInc/inc-offers-domain-boot.git",
    "git@github.com:IncentivioInc/inc-operational-metrics.git",
    "git@github.com:IncentivioInc/inc-ordering-service.git",
    "git@github.com:IncentivioInc/inc-partnerapi-gateway.git",
    "git@github.com:IncentivioInc/inc-payments.git",
    "git@github.com:IncentivioInc/inc-payrisk-manager.git",
    "git@github.com:IncentivioInc/inc-persona-processor.git",
    "git@github.com:IncentivioInc/inc-referrals.git",
    "git@github.com:IncentivioInc/inc-reports.git",
    "git@github.com:IncentivioInc/inc-transactions.git", 
    "git@github.com:IncentivioInc/inc-user-domain-boot.git",
    "git@github.com:IncentivioInc/inc-wallet.git",
    "git@github.com:IncentivioInc/inc-sms-connector.git",
    "git@github.com:IncentivioInc/inc-loyalty-boot.git"
]

images = [
    "inc-activity-distributor-v_sc-220063_5",
    "inc-analytics-service-v_sc-220063_4",
    "inc-condel-doordash-v_sc-220063_4",
    "inc-connector-toast-v_sc-220063_6",
    "inc-conpay-heartland-v_sc-220063_86",
    "inc-conpay-moneris-v_sc-220063_9",
    "inc-conpay-spreedly-v_sc-220063_9",
    "inc-conpay-stripe-v_sc-220063_87",
    "inc-conpay-vantiv-omni-v_sc-220063_9",
    "inc-conpay-vantiv-v_sc-220063_9",
    "inc-conpos-brink-v_sc-220063_67",
    "inc-conpos-lightspeed-v_sc-220063_8",
    "inc-conpos-silverware-v_sc-220063_9",
    "inc-conpos-square-v_sc-220063_8",
    "inc-email-bounce-manager-v_sc-220063_69",
    "inc-email-connector-v_sc-220063_73",
    "inc-external-users-import-v_sc-220063_7",
    "inc-failure-notifier-v_sc-220063_70",
    "inc-gift-ach-transfer-service-v_sc-220063_80",
    "inc-giftcard-service-v_sc-220063_83",
    "inc-menu-service-v_sc-220063_8",
    "inc-mobile-api-v_sc-220063_6",
    "inc-offers-domain-v_sc-220063_62",
    "inc-operational-metrics-v_sc-220063_67",
    "inc-ordering-service-v_sc-220063_62",
    "inc-partnerapi-gateway-v_sc-220063_3",
    "inc-payments-v_sc-220063_7",
    "inc-payrisk-manager-v_sc-220063_2",
    "inc-reports-v_sc-220063_51",
    "inc-transactions-v_sc-220063_7",
    "inc-user-domain-boot-v_sc-220063_6",
    "inc-wallet-v_sc-220063_1",
    "inc-connector-sms-v_sc-220063_2"
]

output_file = open("create-app-new.sh", "w")

for repo in repos:
    tag_name = ""
    repo_name = repo.split("/")[-1].replace(".git", "")
    for image in images:
        image_name = image.split("-v_")[0]
        if (image_name == repo_name):
            tag_name = image.split("-v_")[1]

            # Create the formatted string
            formatted_string = (
                f"argocd app create qa-7-{repo_name} "
                f"--repo {repo} "
                f"--revision {tag_name} "
                "--project inc-qa-7 "
                "--path deploy/kube-manifests-qa-argo "
                "--dest-namespace inc-qa "
                "--dest-server https://9E1A49378D4015F77A195C5757B1E538.gr7.us-east-1.eks.amazonaws.com "
                "--directory-recurse"
            )

            output_file.write(formatted_string)
            output_file.write("\n")

output_file.close()