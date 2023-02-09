locals {
  iam_groups_list = {
    "infra_admin"= {
        users = [
            "dani",
            "joe",
        ]
    },
    "infra_developer"= {
        users = [
            "rmaoo",
            "toplo",
            "koko",
            "poco"
        ]
    },
    "infra_viewer"= {
        users = [
            "luken",
            "dondra",
            "justin"
        ]
    }, 
    "infra_iam_admin"= {
        users = [
            "rachel",
        ]
    }
    }
}