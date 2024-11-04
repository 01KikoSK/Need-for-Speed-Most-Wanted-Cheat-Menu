-- GameGuardian Script for NFS Most Wanted

function setMoney(amount)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("YourCurrentMoney", gg.TYPE_DWORD)
    gg.getResults(1)
    gg.editAll(amount, gg.TYPE_DWORD)
    gg.toast("Money set to " .. amount)
end

function setNitrous(amount)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("YourCurrentNitrous", gg.TYPE_DWORD)
    gg.getResults(1)
    gg.editAll(amount, gg.TYPE_DWORD)
    gg.toast("Nitrous set to " .. amount)
end

function preventCrash()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("CrashValue", gg.TYPE_DWORD)
    gg.getResults(1)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("Crash prevention activated")
end

-- Example usage
setMoney(999999)
setNitrous(100)
preventCrash()