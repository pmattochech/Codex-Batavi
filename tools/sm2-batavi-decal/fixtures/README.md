# Fixtures

`ssl-template/customization_decal_library.sso` is a **synthetic** Night Lords block used only to smoke-test the SSO cloner.

For a real Path B mod, extract live game (or Additional Chapters) SSO into `../ssl-template/` — see [`../ssl-template/DROP-SSO-HERE.md`](../ssl-template/DROP-SSO-HERE.md).

Smoke test (Linux / WSL):

```bash
cd tools/sm2-batavi-decal
./run clone-sso "$PWD/fixtures/ssl-template"
```

Windows (always WSL):

```bat
run.cmd clone-sso fixtures/ssl-template
```
