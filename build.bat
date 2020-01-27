pushd "../spencasaurusrex.github.io" || exit /B 1
for /D %%D in ("*") do (
    if /I not "%%~nxD"==".git" rd /S /Q "%%~D"
)
for %%F in ("*") do (
    del "%%~F"
)
popd

bundle exec jekyll build JEKYLL_ENV=production & XCOPY "./_site" "../spencasaurusrex.github.io" /E