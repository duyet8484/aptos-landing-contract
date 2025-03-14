module aptos_landing_contract::landing {
    // imports...
    use std::signer;
    use std::string::String;


    /// `Page` struct represent a page resource dedicated to a user.
    struct Page has key, drop {
        name: String,
        website: String,
        twitter: String,
        facebook: String,
        instagram: String,
        youtube: String,
        tiktok: String,
    }


    /// This entry function is called for both creating a page for the first time and modifying the links.
    public entry fun setup_page(account: signer, name: String, website: String, twitter: String, facebook: String, instagram: String, youtube: String, tiktok: String) acquires Page {
        // get the address of the signer account
        let signer_addr = signer::address_of(&account);

        // create a new `Page` struct
        let new_page = Page {
            name,
            website,
            twitter,
            facebook,
            instagram,
            youtube,
            tiktok,
        };

        // check if `Page` resource exists for the signer
        if(exists<Page>(signer_addr)) {
            // borrow existent `Page` resource as mutable
            let old_page = borrow_global_mut<Page>(signer_addr);
            // replace old page with new page
            *old_page = new_page;
        } else {
            // create a `Page` resource for the signer
            move_to(&account, new_page);
        }
    }
}