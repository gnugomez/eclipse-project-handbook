---
title: "Project Checklist"
description: "This checklist is provided as a convenience and is included primarily as a guideline or tool to ensure that Eclipse projects are doing the right sorts of things to attract community and grow."
---

This checklist is provided as a convenience and is included primarily as a guideline or tool to ensure that Eclipse projects are doing the right sorts of things to attract community and grow.

> **Tip:** With this checklist, we’ve tried to strike a balance between being concise while being as comprehensive as possible. Many of the entries apply for specific technologies only. If an entry on the list doesn’t make sense for some particular type of technology in your project, skip it (e.g., file headers do not make sense for JSON content).

The [EMO](/project-roles/eclipse-management-organization/) and [Project Management Committee](/project-roles/project-management-committee/) will use this checklist as part of their evaluation during a [Progress Review](/releases-and-reviews/release-and-progress-reviews/).

All projects must conform to the [branding guidelines](/project-branding/) before engaging in any [release](/releases-and-reviews/) (specific examples are described below).

## General

- [ ] Project is operating within the mission and scope defined in its top-level project’s charter;

- [ ] Project is operating within the bounds of its own scope;

- [ ] Project is operating in an open and transparent manner;

- [ ] All distributed [third party](/intellectual-property/third-party-content/) content has been approved by the IP Team;

- [ ] Project content correctly uses Eclipse Foundation trademarks; and

- [ ] Project content (code and documentation) does not violate trademarks owned by other organisations.

## Code

- [ ] All project code is managed in source code repositories provided by The Eclipse Foundation;

- [ ] Naming conventions followed:

  - e.g., `org.eclipse.<shortname>.<component>[.*]` for Java packages and OSGi Bundles;

- [ ] Provider information is set to the project’s formal name:

  - e.g., the `Bundle-Vendor` entry set to the project name (e.g., "Eclipse Woolsey") in OSGi Bundles; or

  - e.g., the `project` and `organization` names are set to the project name (e.g., "Eclipse Woolsey") in Maven `pom.xml` files;

- [ ] [Legal documentation](/legal-documentation/) is provided:

  - [ ] All source files include a [copyright and license header](/legal-documentation/copyright-headers/) (when technically feasible);

  - [ ] All source code repositories include a [`LICENSE`](/legal-documentation/license-file/) file (or equivalent) in the root; and

  - [ ] All source code repositories include a [`NOTICES`](/legal-documentation/notice-files/) file (or — for projects that produce Eclipse Platform plug-ins — `about.html` files as described by the [Legal Documentation for Eclipse Platform Plug-ins and Fragments](/legal-documentation-for-plug-ins/));

- [ ] All source code repositories include a [`CONTRIBUTING`](/legal-documentation/contributor-guide/) file (or equivalent) in the root;

- [ ] All source code repositories include a [`SECURITY`](/legal-documentation/security-file/) file (or equivalent) in the root; and

- [ ] All feature names and descriptions are captured, are spelled correctly, use proper grammar, and contain content that is actually useful for the intended audience.

> **Tip:** Consider adopting [REUSE](https://reuse.software) for your Eclipse open source project.

## Downloads

Many projects provide binary/compiled *downloads* of their software, intended for consumption by their various communities.

- [ ] All generated artifacts include only intellectual property that has been subject to the [IP Due Diligence Process](/intellectual-property/);

- [ ] The [project website](/project-resources-and-services/project-websites/) and [project page](/project-management-infrastructure/project-pages/) includes links for artifacts;

- [ ] [Incubation branding](/incubation/incubation-branding/) (when applicable) is included on distributed artifacts;

- [ ] All download artifacts are (if technical feasible) [signed](https://github.com/eclipse-cbi/cbi/wiki/Signing); and

- [ ] Subject to limitations of specific technologies, the [Semantic Versioning](https://semver.org/) rules are followed.

## Project Metadata

Project metadata is specified and maintained using the [Project Management Infrastructure](/project-management-infrastructure/).

- [ ] The formal name (e.g., "Eclipse Woolsey") is used in the project title;

- [ ] The formal name including appropriate marks is used in the first mention in the text of the project description, and scope;

- [ ] The project description starts with a single paragraph that can serve as an *executive summary*;

- [ ] Source code repository references are up-to-date; and

- [ ] Download links and information are up-to-date.

## Release Metadata

Release metadata is specified and maintained using the [Project Management Infrastructure](/project-management-infrastructure/). Project teams are required to create a metadata entry for every official release (including major, minor, and service releases).

- [ ] At least one release record describes a future release; and

- [ ] The release record includes a description that starts with a single paragraph that can serve as an *executive summary*.

> **Tip:** Use the [Create a new release](/project-management-infrastructure/commands-and-tools/#create-a-new-release) command on a specific [project page](/project-management-infrastructure/project-pages/) in the [Project Management Interface (PMI)](/project-management-infrastructure/) to create a new release record.

## Project Website

The [Project Website](/project-resources-and-services/project-websites/):

- [ ] Is hosted on Eclipse Foundation-provided infrastructure;

- [ ] Uses the formal name including appropriate marks, (e.g., "Eclipse Woolsey™"), on the page title, first mention in the text, and on all prominent references to the project;

- [ ] [Incubation branding](/incubation/incubation-branding/) (when the project is in the [incubation phase](/starting-a-project/project-phases/#incubation-phase)) is displayed;

- [ ] Includes a concise description of the project (with all necessary marks); and

- [ ] The [standard navigation](/project-branding/project-website-branding/#footers) links are included in the website footer.

## Logos and graphics

- [ ] [Project logo](/promoting-your-project/promotion-resources/#logos-and-graphics) includes the trademark symbol; and

- [ ] Project logo is used consistently.

## Company Logos

Company logos may optionally be included on a [project website](/project-resources-and-services/project-websites/), but only if the following conditions are met.

- The company is a [member](https://www.eclipse.org/membership/) of the Eclipse Foundation;

- At least one project committer is an employee of the company in question; and

- The committer is active (that is, they have made at least one commit in the last three months).

## Community Portals and Related Websites

[Community portals](/project-branding/third-party-use/#community-portals), regardless of who owns and maintains them must conform to the branding guidelines. If you discover a website that does not conform to these guidelines (and it is not within your power to effect the changes yourself), send a note to [EMO](mailto:emo@eclipse-foundation.org) to request assistance.

- [ ] The formal name including appropriate marks (e.g., "Eclipse Woolsey™") is used on the page title, first mention in the text, and on all prominent references to the project;

- [ ] [Attributions](/project-branding/third-party-use/#trademark-attribution) are provided for all Eclipse Foundation marks;

- [ ] All references to Eclipse open source projects use the formal name with appropriate marks;

- [ ] Trademark and registered trademark symbols are used appropriately;

- [ ] Developers are directed to the official [project website](/project-resources-and-services/project-websites/) for information regarding contribution or related development activities;

- [ ] Ownership of the domain (especially if it includes the project name) has been transferred to the Eclipse Foundation; and

- [ ] The domain is regarded and used exclusively as a community portal (that is, it is not presented as the official project website).

## Announcements, News items, Blog posts, …​

All announcements regarding project milestones issued by the project must conform to the branding guidelines.

- [ ] The formal name including appropriate marks (e.g., "Eclipse Woolsey™") is used in the title, first mention in the text, and on all prominent references to the project;

- [ ] [Attributions](/project-branding/third-party-use/#trademark-attribution) are provided for all Eclipse Foundation marks; and

- [ ] All references to Eclipse open source projects use the formal name with appropriate marks.
