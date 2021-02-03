# TF2 DamageInfo Tools

A library that provides a few methods to generate particular forms of damage.

`tf_generic_bomb` wasn't enough.

## Usage

The library exposes a couple of opaque handles with the information necessary to apply radius
damage.

```
/**
 * recreate the Ullapool Caber explosion with custom damage / radius
 * assume all variables are valid
 */
CTakeDamageInfo damageInfo = new CTakeDamageInfo(owner, owner, damage,
		DMG_BLAST | DMG_SLOWBURN, stickbomb, vecShootPos, vecShootPos, vecShootPos,
		TF_CUSTOM_STICKBOMB_EXPLOSION);

CTFRadiusDamageInfo radiusInfo = new CTFRadiusDamageInfo(damageInfo, vecShootPos, radius);

radiusInfo.Apply();

delete radiusInfo;
delete damageInfo;
```

In the future I'd like to expose more options for both `*DamageInfo` handle types.

## Runtime Dependencies

This project uses the memory allocation functionality provided in [Source Scramble][]; that
extension must be installed.  This plugin currently targets a minimum version of 0.3.4, though
the latest is preferred.

[Source Scramble]: https://github.com/nosoop/SMExt-SourceScramble

## Building

This project can be built in a reproductive manner with [Ninja](https://ninja-build.org/),
`git`, and Python 3.

For this particular project, you will also want the [chevron][] and [toml][] Python packages, as
some SourcePawn code is automatically generated to deal with in-memory structs.

1.  Clone the repository and its submodules: `git clone --recurse-submodules ...`
2.  Execute `python3 configure.py --spcomp-dir ${PATH}` within the repo, where `${PATH}` is the
path to the directory containing `spcomp`.  Verified working against 1.9 and 1.10.
3.  Run `ninja`.  Output will be available under `build/`.

(If you'd like to use a similar build system for your project,
[the template project is available here][ninjatemplate].)

[ninjatemplate]: https://github.com/nosoop/NinjaBuild-SMPlugin
[chevron]: https://github.com/noahmorrison/chevron
[toml]: https://github.com/uiri/toml
