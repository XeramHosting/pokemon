
function SWEP:PrimaryAttack()
if  LocalPlayer():GetEyeTrace().Entity then
RunConsoleCommand("test1")
end
print(LocalPlayer():GetEyeTrace().Entity)
end

function SWEP:SecondaryAttack()
if LocalPlayer():GetEyeTrace().Entity:IsValid() then
curlvl = LocalPlayer():GetEyeTrace().Entity:Health()/100
print(curlvl)
else
print("It's nothing.")
end
end

