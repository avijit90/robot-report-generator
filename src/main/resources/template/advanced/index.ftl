<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Consolidated Report</title>
    <link rel="shortcut icon" href="images/favicon.png"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>

        /* Style the navigation menu inside the left column */
        #myMenu {
          list-style-type: none;
          padding: 0;
          margin: 0;
         }

        #myMenu li a {
          padding: 12px;
          text-decoration: none;
          color: black;
          display: block
        }

        #myMenu li a:hover {
          background-color: #d6eaf8;
        }

        :root {
          --blue: #5E50F9;
          --indigo: #6610f2;
          --purple: #6a008a;
          --pink: #E91E63;
          --red: #f96868;
          --orange: #f2a654;
          --yellow: #f6e84e;
          --green: #46c35f;
          --teal: #58d8a3;
          --cyan: #57c7d4;
          --white: #ffffff;
          --gray: #6c757d;
          --gray-dark: #0f1531;
          --blue: #5E50F9;
          --indigo: #6610f2;
          --purple: #6a008a;
          --pink: #E91E63;
          --red: #f96868;
          --orange: #f2a654;
          --yellow: #f6e84e;
          --green: #46c35f;
          --teal: #58d8a3;
          --cyan: #57c7d4;
          --white: #ffffff;
          --gray: #434a54;
          --gray-light: #aab2bd;
          --gray-lighter: #e8eff4;
          --gray-lightest: #e6e9ed;
          --black: #000000;
          --primary: #b66dff;
          --secondary: #d8d8d8;
          --success: #1bcfb4;
          --info: #198ae3;
          --warning: #fed713;
          --danger: #fe7c96;
          --light: #f8f9fa;
          --dark: #3e4b5b;
          --breakpoint-xs: 0;
          --breakpoint-sm: 576px;
          --breakpoint-md: 768px;
          --breakpoint-lg: 992px;
          --breakpoint-xl: 1200px;
          --font-family-sans-serif: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
          --font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
        }

        *,
        *::before,
        *::after {
          box-sizing: border-box;
        }

        html {
          font-family: sans-serif;
          line-height: 1.15;
          -webkit-text-size-adjust: 100%;
          -webkit-tap-highlight-color: transparent;
        }

        article, aside, figcaption, figure, footer, header, hgroup, main, nav, section {
          display: block;
        }

        body {
          margin: 0;
          font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
          font-size: 1rem;
          font-weight: 400;
          line-height: 1.5;
          color: #343a40;
          text-align: left;
          background-color: #fff;
        }

        [tabindex="-1"]:focus {
          outline: 0 !important;
        }

        hr {
          box-sizing: content-box;
          height: 0;
          overflow: visible;
        }

        h1, h2, h3, h4, h5, h6 {
          margin-top: 0;
          margin-bottom: 0.5rem;
        }

        p {
          margin-top: 0;
          margin-bottom: 1rem;
        }

        ol,
        ul,
        dl {
          margin-top: 0;
          margin-bottom: 1rem;
        }

        ol ol,
        ul ul,
        ol ul,
        ul ol {
          margin-bottom: 0;
        }

        dt {
          font-weight: 700;
        }

        dd {
          margin-bottom: .5rem;
          margin-left: 0;
        }

        blockquote {
          margin: 0 0 1rem;
        }

        b,
        strong {
          font-weight: bolder;
        }

        small {
          font-size: 80%;
        }

        sub,
        sup {
          position: relative;
          font-size: 75%;
          line-height: 0;
          vertical-align: baseline;
        }

        sub {
          bottom: -.25em;
        }

        sup {
          top: -.5em;
        }

        a {
          color: #007bff;
          text-decoration: none;
          background-color: transparent;
        }

        a:hover {
          color: #0056b3;
          text-decoration: underline;
        }

        a:not([href]):not([tabindex]) {
          color: inherit;
          text-decoration: none;
        }

        a:not([href]):not([tabindex]):hover, a:not([href]):not([tabindex]):focus {
          color: inherit;
          text-decoration: none;
        }

        a:not([href]):not([tabindex]):focus {
          outline: 0;
        }

        pre,
        code,
        kbd,
        samp {
          font-family: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
          font-size: 1em;
        }

        pre {
          margin-top: 0;
          margin-bottom: 1rem;
          overflow: auto;
        }

        figure {
          margin: 0 0 1rem;
        }

        img {
          vertical-align: middle;
          border-style: none;
        }

        svg {
          overflow: hidden;
          vertical-align: middle;
        }

        table {
          border-collapse: collapse;
        }

        caption {
          padding-top: 0.9375rem;
          padding-bottom: 0.9375rem;
          color: #6c757d;
          text-align: left;
          caption-side: bottom;
        }

        th {
          text-align: inherit;
        }

        label {
          display: inline-block;
          margin-bottom: 0.5rem;
        }

        button {
          border-radius: 0;
        }

        button:focus {
          outline: 1px dotted;
          outline: 5px auto -webkit-focus-ring-color;
        }

        input,
        button,
        select,
        optgroup,
        textarea {
          margin: 0;
          font-family: inherit;
          font-size: inherit;
          line-height: inherit;
        }

        button,
        input {
          overflow: visible;
        }

        button,
        select {
          text-transform: none;
        }

        select {
          word-wrap: normal;
        }

        button,
        [type="button"],
        [type="reset"],
        [type="submit"] {
          -webkit-appearance: button;
        }

        button:not(:disabled),
        [type="button"]:not(:disabled),
        [type="reset"]:not(:disabled),
        [type="submit"]:not(:disabled) {
          cursor: pointer;
        }

        button::-moz-focus-inner,
        [type="button"]::-moz-focus-inner,
        [type="reset"]::-moz-focus-inner,
        [type="submit"]::-moz-focus-inner {
          padding: 0;
          border-style: none;
        }

        input[type="radio"],
        input[type="checkbox"] {
          box-sizing: border-box;
          padding: 0;
        }

        input[type="date"],
        input[type="time"],
        input[type="datetime-local"],
        input[type="month"] {
          -webkit-appearance: listbox;
        }

        textarea {
          overflow: auto;
          resize: vertical;
        }

        fieldset {
          min-width: 0;
          padding: 0;
          margin: 0;
          border: 0;
        }

        legend {
          display: block;
          width: 100%;
          max-width: 100%;
          padding: 0;
          margin-bottom: .5rem;
          font-size: 1.5rem;
          line-height: inherit;
          color: inherit;
          white-space: normal;
        }

        progress {
          vertical-align: baseline;
        }

        [type="number"]::-webkit-inner-spin-button,
        [type="number"]::-webkit-outer-spin-button {
          height: auto;
        }

        [type="search"] {
          outline-offset: -2px;
          -webkit-appearance: none;
        }

        [type="search"]::-webkit-search-decoration {
          -webkit-appearance: none;
        }

        ::-webkit-file-upload-button {
          font: inherit;
          -webkit-appearance: button;
        }

        output {
          display: inline-block;
        }

        summary {
          display: list-item;
          cursor: pointer;
        }

        template {
          display: none;
        }

        [hidden] {
          display: none !important;
        }

        h1, h2, h3, h4, h5, h6,
        .h1, .h2, .h3, .h4, .h5, .h6 {
          margin-bottom: 0.5rem;
          font-weight: 500;
          line-height: 1.2;
        }

        h1, .h1 {
          font-size: 2.5rem;
        }

        h2, .h2 {
          font-size: 2rem;
        }

        h3, .h3 {
          font-size: 1.75rem;
        }

        h4, .h4 {
          font-size: 1.5rem;
        }

        h5, .h5 {
          font-size: 1.25rem;
        }

        h6, .h6 {
          font-size: 1rem;
        }

        .lead {
          font-size: 1.25rem;
          font-weight: 300;
        }

        .display-1 {
          font-size: 6rem;
          font-weight: 300;
          line-height: 1.2;
        }

        .display-2 {
          font-size: 5.5rem;
          font-weight: 300;
          line-height: 1.2;
        }

        .display-3 {
          font-size: 4.5rem;
          font-weight: 300;
          line-height: 1.2;
        }

        .display-4 {
          font-size: 3.5rem;
          font-weight: 300;
          line-height: 1.2;
        }

        hr {
          margin-top: 1rem;
          margin-bottom: 1rem;
          border: 0;
          border-top: 1px solid rgba(0, 0, 0, 0.1);
        }

        small,
        .small {
          font-size: 80%;
          font-weight: 400;
        }

        mark,
        .mark {
          padding: 0.2em;
          background-color: #fcf8e3;
        }

        .list-unstyled {
          padding-left: 0;
          list-style: none;
        }

        .list-inline {
          padding-left: 0;
          list-style: none;
        }

        .list-inline-item {
          display: inline-block;
        }

        .list-inline-item:not(:last-child) {
          margin-right: 0.5rem;
        }

        .initialism {
          font-size: 90%;
          text-transform: uppercase;
        }

        .blockquote {
          margin-bottom: 1rem;
          font-size: 1.25rem;
        }

        .blockquote-footer {
          display: block;
          font-size: 80%;
          color: #6c757d;
        }

        .blockquote-footer::before {
          content: "\2014\00A0";
        }

        .img-fluid {
          max-width: 100%;
          height: auto;
        }

        .img-thumbnail {
          padding: 0.25rem;
          background-color: #fff;
          border: 1px solid #dee2e6;
          border-radius: 0.25rem;
          max-width: 100%;
          height: auto;
        }

        .figure {
          display: inline-block;
        }

        .figure-img {
          margin-bottom: 0.5rem;
          line-height: 1;
        }

        .figure-caption {
          font-size: 90%;
          color: #6c757d;
        }

        code {
          font-size: 87.5%;
          color: #e83e8c;
          word-break: break-word;
        }

        a > code {
          color: inherit;
        }

        kbd {
          padding: 0.2rem 0.4rem;
          font-size: 87.5%;
          color: #fff;
          background-color: #212529;
          border-radius: 0.2rem;
        }

        kbd kbd {
          padding: 0;
          font-size: 100%;
          font-weight: 700;
        }

        pre {
          display: block;
          font-size: 87.5%;
          color: #212529;
        }

        pre code {
          font-size: inherit;
          color: inherit;
          word-break: normal;
        }

        .pre-scrollable {
          max-height: 340px;
          overflow-y: scroll;
        }

        .container {
          width: 100%;
          padding-right: 20px;
          padding-left: 20px;
          margin-right: auto;
          margin-left: auto;
        }

        @media (min-width: 576px) {
          .container {
            max-width: 540px;
          }
        }

        @media (min-width: 768px) {
          .container {
            max-width: 720px;
          }
        }

        @media (min-width: 992px) {
          .container {
            max-width: 960px;
          }
        }

        @media (min-width: 1200px) {
          .container {
            max-width: 1140px;
          }
        }

        .container-fluid {
          width: 100%;
          padding-right: 20px;
          padding-left: 20px;
          margin-right: auto;
          margin-left: auto;
        }

        .row {
          display: flex;
          flex-wrap: wrap;
          margin-right: -20px;
          margin-left: -20px;
        }

        .no-gutters {
          margin-right: 0;
          margin-left: 0;
        }

        .no-gutters > .col,
        .no-gutters > [class*="col-"] {
          padding-right: 0;
          padding-left: 0;
        }

        .col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-10, .col-11, .col-12, .col,
        .col-auto, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm,
        .col-sm-auto, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-md,
        .col-md-auto, .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg,
        .col-lg-auto, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl,
        .col-xl-auto {
          position: relative;
          width: 100%;
          padding-right: 20px;
          padding-left: 20px;
        }

        .col {
          flex-basis: 0;
          flex-grow: 1;
          max-width: 100%;
        }

        .col-auto {
          flex: 0 0 auto;
          width: auto;
          max-width: 100%;
        }

        .col-1 {
          flex: 0 0 8.33333%;
          max-width: 8.33333%;
        }

        .col-2 {
          flex: 0 0 16.66667%;
          max-width: 16.66667%;
        }

        .col-3 {
          flex: 0 0 25%;
          max-width: 25%;
        }

        .col-4 {
          flex: 0 0 33.33333%;
          max-width: 33.33333%;
        }

        .col-5 {
          flex: 0 0 41.66667%;
          max-width: 41.66667%;
        }

        .col-6 {
          flex: 0 0 50%;
          max-width: 50%;
        }

        .col-7 {
          flex: 0 0 58.33333%;
          max-width: 58.33333%;
        }

        .col-8 {
          flex: 0 0 66.66667%;
          max-width: 66.66667%;
        }

        .col-9 {
          flex: 0 0 75%;
          max-width: 75%;
        }

        .col-10 {
          flex: 0 0 83.33333%;
          max-width: 83.33333%;
        }

        .col-11 {
          flex: 0 0 91.66667%;
          max-width: 91.66667%;
        }

        .col-12 {
          flex: 0 0 100%;
          max-width: 100%;
        }

        .order-first {
          order: -1;
        }

        .order-last {
          order: 13;
        }

        .order-0 {
          order: 0;
        }

        .order-1 {
          order: 1;
        }

        .order-2 {
          order: 2;
        }

        .order-3 {
          order: 3;
        }

        .order-4 {
          order: 4;
        }

        .order-5 {
          order: 5;
        }

        .order-6 {
          order: 6;
        }

        .order-7 {
          order: 7;
        }

        .order-8 {
          order: 8;
        }

        .order-9 {
          order: 9;
        }

        .order-10 {
          order: 10;
        }

        .order-11 {
          order: 11;
        }

        .order-12 {
          order: 12;
        }

        .offset-1 {
          margin-left: 8.33333%;
        }

        .offset-2 {
          margin-left: 16.66667%;
        }

        .offset-3 {
          margin-left: 25%;
        }

        .offset-4 {
          margin-left: 33.33333%;
        }

        .offset-5 {
          margin-left: 41.66667%;
        }

        .offset-6 {
          margin-left: 50%;
        }

        .offset-7 {
          margin-left: 58.33333%;
        }

        .offset-8 {
          margin-left: 66.66667%;
        }

        .offset-9 {
          margin-left: 75%;
        }

        .offset-10 {
          margin-left: 83.33333%;
        }

        .offset-11 {
          margin-left: 91.66667%;
        }

        @media (min-width: 576px) {
          .col-sm {
            flex-basis: 0;
            flex-grow: 1;
            max-width: 100%;
          }
          .col-sm-auto {
            flex: 0 0 auto;
            width: auto;
            max-width: 100%;
          }
          .col-sm-1 {
            flex: 0 0 8.33333%;
            max-width: 8.33333%;
          }
          .col-sm-2 {
            flex: 0 0 16.66667%;
            max-width: 16.66667%;
          }
          .col-sm-3 {
            flex: 0 0 25%;
            max-width: 25%;
          }
          .col-sm-4 {
            flex: 0 0 33.33333%;
            max-width: 33.33333%;
          }
          .col-sm-5 {
            flex: 0 0 41.66667%;
            max-width: 41.66667%;
          }
          .col-sm-6 {
            flex: 0 0 50%;
            max-width: 50%;
          }
          .col-sm-7 {
            flex: 0 0 58.33333%;
            max-width: 58.33333%;
          }
          .col-sm-8 {
            flex: 0 0 66.66667%;
            max-width: 66.66667%;
          }
          .col-sm-9 {
            flex: 0 0 75%;
            max-width: 75%;
          }
          .col-sm-10 {
            flex: 0 0 83.33333%;
            max-width: 83.33333%;
          }
          .col-sm-11 {
            flex: 0 0 91.66667%;
            max-width: 91.66667%;
          }
          .col-sm-12 {
            flex: 0 0 100%;
            max-width: 100%;
          }
          .order-sm-first {
            order: -1;
          }
          .order-sm-last {
            order: 13;
          }
          .order-sm-0 {
            order: 0;
          }
          .order-sm-1 {
            order: 1;
          }
          .order-sm-2 {
            order: 2;
          }
          .order-sm-3 {
            order: 3;
          }
          .order-sm-4 {
            order: 4;
          }
          .order-sm-5 {
            order: 5;
          }
          .order-sm-6 {
            order: 6;
          }
          .order-sm-7 {
            order: 7;
          }
          .order-sm-8 {
            order: 8;
          }
          .order-sm-9 {
            order: 9;
          }
          .order-sm-10 {
            order: 10;
          }
          .order-sm-11 {
            order: 11;
          }
          .order-sm-12 {
            order: 12;
          }
          .offset-sm-0 {
            margin-left: 0;
          }
          .offset-sm-1 {
            margin-left: 8.33333%;
          }
          .offset-sm-2 {
            margin-left: 16.66667%;
          }
          .offset-sm-3 {
            margin-left: 25%;
          }
          .offset-sm-4 {
            margin-left: 33.33333%;
          }
          .offset-sm-5 {
            margin-left: 41.66667%;
          }
          .offset-sm-6 {
            margin-left: 50%;
          }
          .offset-sm-7 {
            margin-left: 58.33333%;
          }
          .offset-sm-8 {
            margin-left: 66.66667%;
          }
          .offset-sm-9 {
            margin-left: 75%;
          }
          .offset-sm-10 {
            margin-left: 83.33333%;
          }
          .offset-sm-11 {
            margin-left: 91.66667%;
          }
        }

        @media (min-width: 768px) {
          .col-md {
            flex-basis: 0;
            flex-grow: 1;
            max-width: 100%;
          }
          .col-md-auto {
            flex: 0 0 auto;
            width: auto;
            max-width: 100%;
          }
          .col-md-1 {
            flex: 0 0 8.33333%;
            max-width: 8.33333%;
          }
          .col-md-2 {
            flex: 0 0 16.66667%;
            max-width: 16.66667%;
          }
          .col-md-3 {
            flex: 0 0 25%;
            max-width: 25%;
          }
          .col-md-4 {
            flex: 0 0 33.33333%;
            max-width: 33.33333%;
          }
          .col-md-5 {
            flex: 0 0 41.66667%;
            max-width: 41.66667%;
          }
          .col-md-6 {
            flex: 0 0 50%;
            max-width: 50%;
          }
          .col-md-7 {
            flex: 0 0 58.33333%;
            max-width: 58.33333%;
          }
          .col-md-8 {
            flex: 0 0 66.66667%;
            max-width: 66.66667%;
          }
          .col-md-9 {
            flex: 0 0 75%;
            max-width: 75%;
          }
          .col-md-10 {
            flex: 0 0 83.33333%;
            max-width: 83.33333%;
          }
          .col-md-11 {
            flex: 0 0 91.66667%;
            max-width: 91.66667%;
          }
          .col-md-12 {
            flex: 0 0 100%;
            max-width: 100%;
          }
          .order-md-first {
            order: -1;
          }
          .order-md-last {
            order: 13;
          }
          .order-md-0 {
            order: 0;
          }
          .order-md-1 {
            order: 1;
          }
          .order-md-2 {
            order: 2;
          }
          .order-md-3 {
            order: 3;
          }
          .order-md-4 {
            order: 4;
          }
          .order-md-5 {
            order: 5;
          }
          .order-md-6 {
            order: 6;
          }
          .order-md-7 {
            order: 7;
          }
          .order-md-8 {
            order: 8;
          }
          .order-md-9 {
            order: 9;
          }
          .order-md-10 {
            order: 10;
          }
          .order-md-11 {
            order: 11;
          }
          .order-md-12 {
            order: 12;
          }
          .offset-md-0 {
            margin-left: 0;
          }
          .offset-md-1 {
            margin-left: 8.33333%;
          }
          .offset-md-2 {
            margin-left: 16.66667%;
          }
          .offset-md-3 {
            margin-left: 25%;
          }
          .offset-md-4 {
            margin-left: 33.33333%;
          }
          .offset-md-5 {
            margin-left: 41.66667%;
          }
          .offset-md-6 {
            margin-left: 50%;
          }
          .offset-md-7 {
            margin-left: 58.33333%;
          }
          .offset-md-8 {
            margin-left: 66.66667%;
          }
          .offset-md-9 {
            margin-left: 75%;
          }
          .offset-md-10 {
            margin-left: 83.33333%;
          }
          .offset-md-11 {
            margin-left: 91.66667%;
          }
        }

        @media (min-width: 992px) {
          .col-lg {
            flex-basis: 0;
            flex-grow: 1;
            max-width: 100%;
          }
          .col-lg-auto {
            flex: 0 0 auto;
            width: auto;
            max-width: 100%;
          }
          .col-lg-1 {
            flex: 0 0 8.33333%;
            max-width: 8.33333%;
          }
          .col-lg-2 {
            flex: 0 0 16.66667%;
            max-width: 16.66667%;
          }
          .col-lg-3 {
            flex: 0 0 25%;
            max-width: 25%;
          }
          .col-lg-4 {
            flex: 0 0 33.33333%;
            max-width: 33.33333%;
          }
          .col-lg-5 {
            flex: 0 0 41.66667%;
            max-width: 41.66667%;
          }
          .col-lg-6 {
            flex: 0 0 50%;
            max-width: 50%;
          }
          .col-lg-7 {
            flex: 0 0 58.33333%;
            max-width: 58.33333%;
          }
          .col-lg-8 {
            flex: 0 0 66.66667%;
            max-width: 66.66667%;
          }
          .col-lg-9 {
            flex: 0 0 75%;
            max-width: 75%;
          }
          .col-lg-10 {
            flex: 0 0 83.33333%;
            max-width: 83.33333%;
          }
          .col-lg-11 {
            flex: 0 0 91.66667%;
            max-width: 91.66667%;
          }
          .col-lg-12 {
            flex: 0 0 100%;
            max-width: 100%;
          }
          .order-lg-first {
            order: -1;
          }
          .order-lg-last {
            order: 13;
          }
          .order-lg-0 {
            order: 0;
          }
          .order-lg-1 {
            order: 1;
          }
          .order-lg-2 {
            order: 2;
          }
          .order-lg-3 {
            order: 3;
          }
          .order-lg-4 {
            order: 4;
          }
          .order-lg-5 {
            order: 5;
          }
          .order-lg-6 {
            order: 6;
          }
          .order-lg-7 {
            order: 7;
          }
          .order-lg-8 {
            order: 8;
          }
          .order-lg-9 {
            order: 9;
          }
          .order-lg-10 {
            order: 10;
          }
          .order-lg-11 {
            order: 11;
          }
          .order-lg-12 {
            order: 12;
          }
          .offset-lg-0 {
            margin-left: 0;
          }
          .offset-lg-1 {
            margin-left: 8.33333%;
          }
          .offset-lg-2 {
            margin-left: 16.66667%;
          }
          .offset-lg-3 {
            margin-left: 25%;
          }
          .offset-lg-4 {
            margin-left: 33.33333%;
          }
          .offset-lg-5 {
            margin-left: 41.66667%;
          }
          .offset-lg-6 {
            margin-left: 50%;
          }
          .offset-lg-7 {
            margin-left: 58.33333%;
          }
          .offset-lg-8 {
            margin-left: 66.66667%;
          }
          .offset-lg-9 {
            margin-left: 75%;
          }
          .offset-lg-10 {
            margin-left: 83.33333%;
          }
          .offset-lg-11 {
            margin-left: 91.66667%;
          }
        }

        @media (min-width: 1200px) {
          .col-xl {
            flex-basis: 0;
            flex-grow: 1;
            max-width: 100%;
          }
          .col-xl-auto {
            flex: 0 0 auto;
            width: auto;
            max-width: 100%;
          }
          .col-xl-1 {
            flex: 0 0 8.33333%;
            max-width: 8.33333%;
          }
          .col-xl-2 {
            flex: 0 0 16.66667%;
            max-width: 16.66667%;
          }
          .col-xl-3 {
            flex: 0 0 25%;
            max-width: 25%;
          }
          .col-xl-4 {
            flex: 0 0 33.33333%;
            max-width: 33.33333%;
          }
          .col-xl-5 {
            flex: 0 0 41.66667%;
            max-width: 41.66667%;
          }
          .col-xl-6 {
            flex: 0 0 50%;
            max-width: 50%;
          }
          .col-xl-7 {
            flex: 0 0 58.33333%;
            max-width: 58.33333%;
          }
          .col-xl-8 {
            flex: 0 0 66.66667%;
            max-width: 66.66667%;
          }
          .col-xl-9 {
            flex: 0 0 75%;
            max-width: 75%;
          }
          .col-xl-10 {
            flex: 0 0 83.33333%;
            max-width: 83.33333%;
          }
          .col-xl-11 {
            flex: 0 0 91.66667%;
            max-width: 91.66667%;
          }
          .col-xl-12 {
            flex: 0 0 100%;
            max-width: 100%;
          }
          .order-xl-first {
            order: -1;
          }
          .order-xl-last {
            order: 13;
          }
          .order-xl-0 {
            order: 0;
          }
          .order-xl-1 {
            order: 1;
          }
          .order-xl-2 {
            order: 2;
          }
          .order-xl-3 {
            order: 3;
          }
          .order-xl-4 {
            order: 4;
          }
          .order-xl-5 {
            order: 5;
          }
          .order-xl-6 {
            order: 6;
          }
          .order-xl-7 {
            order: 7;
          }
          .order-xl-8 {
            order: 8;
          }
          .order-xl-9 {
            order: 9;
          }
          .order-xl-10 {
            order: 10;
          }
          .order-xl-11 {
            order: 11;
          }
          .order-xl-12 {
            order: 12;
          }
          .offset-xl-0 {
            margin-left: 0;
          }
          .offset-xl-1 {
            margin-left: 8.33333%;
          }
          .offset-xl-2 {
            margin-left: 16.66667%;
          }
          .offset-xl-3 {
            margin-left: 25%;
          }
          .offset-xl-4 {
            margin-left: 33.33333%;
          }
          .offset-xl-5 {
            margin-left: 41.66667%;
          }
          .offset-xl-6 {
            margin-left: 50%;
          }
          .offset-xl-7 {
            margin-left: 58.33333%;
          }
          .offset-xl-8 {
            margin-left: 66.66667%;
          }
          .offset-xl-9 {
            margin-left: 75%;
          }
          .offset-xl-10 {
            margin-left: 83.33333%;
          }
          .offset-xl-11 {
            margin-left: 91.66667%;
          }
        }

        .table {
          width: 100%;
          margin-bottom: 1rem;
          color: #212529;
        }

        .table th,
        .table td {
          padding: 0.9375rem;
          vertical-align: top;
          border-top: 1px solid #ebedf2;
        }

        .table thead th {
          vertical-align: bottom;
          border-bottom: 2px solid #ebedf2;
        }

        .table tbody + tbody {
          border-top: 2px solid #ebedf2;
        }

        .table-sm th,
        .table-sm td {
          padding: 0.3rem;
        }

        .table-bordered {
          border: 1px solid #ebedf2;
        }

        .table-bordered th,
        .table-bordered td {
          border: 1px solid #ebedf2;
        }

        .table-bordered thead th,
        .table-bordered thead td {
          border-bottom-width: 2px;
        }

        .table-borderless th,
        .table-borderless td,
        .table-borderless thead th,
        .table-borderless tbody + tbody {
          border: 0;
        }

        .table-striped tbody tr:nth-of-type(odd) {
          background-color: #f2edf3;
        }

        .table-hover tbody tr:hover {
          color: #212529;
          background-color: #f2edf3;
        }

        .table-primary,
        .table-primary > th,
        .table-primary > td {
          background-color: #ebd6ff;
        }

        .table-primary th,
        .table-primary td,
        .table-primary thead th,
        .table-primary tbody + tbody {
          border-color: #d9b3ff;
        }

        .table-hover .table-primary:hover {
          background-color: #dfbdff;
        }

        .table-hover .table-primary:hover > td,
        .table-hover .table-primary:hover > th {
          background-color: #dfbdff;
        }

        .table-secondary,
        .table-secondary > th,
        .table-secondary > td {
          background-color: #f4f4f4;
        }

        .table-secondary th,
        .table-secondary td,
        .table-secondary thead th,
        .table-secondary tbody + tbody {
          border-color: #ebebeb;
        }

        .table-hover .table-secondary:hover {
          background-color: #e7e7e7;
        }

        .table-hover .table-secondary:hover > td,
        .table-hover .table-secondary:hover > th {
          background-color: #e7e7e7;
        }

        .table-success,
        .table-success > th,
        .table-success > td {
          background-color: #bff2ea;
        }

        .table-success th,
        .table-success td,
        .table-success thead th,
        .table-success tbody + tbody {
          border-color: #88e6d8;
        }

        .table-hover .table-success:hover {
          background-color: #aaeee3;
        }

        .table-hover .table-success:hover > td,
        .table-hover .table-success:hover > th {
          background-color: #aaeee3;
        }

        .table-info,
        .table-info > th,
        .table-info > td {
          background-color: #bfdef7;
        }

        .table-info th,
        .table-info td,
        .table-info thead th,
        .table-info tbody + tbody {
          border-color: #87c2f0;
        }

        .table-hover .table-info:hover {
          background-color: #a8d2f4;
        }

        .table-hover .table-info:hover > td,
        .table-hover .table-info:hover > th {
          background-color: #a8d2f4;
        }

        .table-warning,
        .table-warning > th,
        .table-warning > td {
          background-color: #fff4bd;
        }

        .table-warning th,
        .table-warning td,
        .table-warning thead th,
        .table-warning tbody + tbody {
          border-color: #feea84;
        }

        .table-hover .table-warning:hover {
          background-color: #fff0a4;
        }

        .table-hover .table-warning:hover > td,
        .table-hover .table-warning:hover > th {
          background-color: #fff0a4;
        }

        .table-danger,
        .table-danger > th,
        .table-danger > td {
          background-color: #ffdae2;
        }

        .table-danger th,
        .table-danger td,
        .table-danger thead th,
        .table-danger tbody + tbody {
          border-color: #febbc8;
        }

        .table-hover .table-danger:hover {
          background-color: #ffc1ce;
        }

        .table-hover .table-danger:hover > td,
        .table-hover .table-danger:hover > th {
          background-color: #ffc1ce;
        }

        .table-light,
        .table-light > th,
        .table-light > td {
          background-color: #fdfdfe;
        }

        .table-light th,
        .table-light td,
        .table-light thead th,
        .table-light tbody + tbody {
          border-color: #fbfcfc;
        }

        .table-hover .table-light:hover {
          background-color: #ececf6;
        }

        .table-hover .table-light:hover > td,
        .table-hover .table-light:hover > th {
          background-color: #ececf6;
        }

        .table-dark,
        .table-dark > th,
        .table-dark > td {
          background-color: #c9cdd1;
        }

        .table-dark th,
        .table-dark td,
        .table-dark thead th,
        .table-dark tbody + tbody {
          border-color: #9ba1aa;
        }

        .table-hover .table-dark:hover {
          background-color: #bbc0c5;
        }

        .table-hover .table-dark:hover > td,
        .table-hover .table-dark:hover > th {
          background-color: #bbc0c5;
        }

        .table-active,
        .table-active > th,
        .table-active > td {
          background-color: rgba(0, 0, 0, 0.075);
        }

        .table-hover .table-active:hover {
          background-color: rgba(0, 0, 0, 0.075);
        }

        .table-hover .table-active:hover > td,
        .table-hover .table-active:hover > th {
          background-color: rgba(0, 0, 0, 0.075);
        }

        .table .thead-dark th {
          color: #fff;
          background-color: #343a40;
          border-color: #454d55;
        }

        .table .thead-light th {
          color: #495057;
          background-color: #e9ecef;
          border-color: #ebedf2;
        }

        .table-dark {
          color: #fff;
          background-color: #343a40;
        }

        .table-dark th,
        .table-dark td,
        .table-dark thead th {
          border-color: #454d55;
        }

        .table-dark.table-bordered {
          border: 0;
        }

        .table-dark.table-striped tbody tr:nth-of-type(odd) {
          background-color: rgba(255, 255, 255, 0.05);
        }

        .table-dark.table-hover tbody tr:hover {
          color: #fff;
          background-color: rgba(255, 255, 255, 0.075);
        }

        @media (max-width: 575.98px) {
          .table-responsive-sm {
            display: block;
            width: 100%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
          }
          .table-responsive-sm > .table-bordered {
            border: 0;
          }
        }

        @media (max-width: 767.98px) {
          .table-responsive-md {
            display: block;
            width: 100%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
          }
          .table-responsive-md > .table-bordered {
            border: 0;
          }
        }

        @media (max-width: 991.98px) {
          .table-responsive-lg {
            display: block;
            width: 100%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
          }
          .table-responsive-lg > .table-bordered {
            border: 0;
          }
        }

        @media (max-width: 1199.98px) {
          .table-responsive-xl {
            display: block;
            width: 100%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
          }
          .table-responsive-xl > .table-bordered {
            border: 0;
          }
        }

        .table-responsive {
          display: block;
          width: 100%;
          overflow-x: auto;
          -webkit-overflow-scrolling: touch;
        }

        .table-responsive > .table-bordered {
          border: 0;
        }

        .form-control {
          display: block;
          width: 100%;
          height: calc(1.5em + 0.75rem + 2px);
          padding: 0.875rem 1.375rem;
          font-size: 0.8125rem;
          font-weight: 400;
          line-height: 1;
          color: #495057;
          background-color: #ffffff;
          background-clip: padding-box;
          border: 1px solid #ced4da;
          border-radius: 2px;
          transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        @media (prefers-reduced-motion: reduce) {
          .form-control {
            transition: none;
          }
        }

        .form-control::-ms-expand {
          background-color: transparent;
          border: 0;
        }

        .form-control:focus {
          color: #495057;
          background-color: #fff;
          border-color: #80bdff;
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .form-control::placeholder {
          color: #c9c8c8;
          opacity: 1;
        }

        .form-control:disabled, .form-control[readonly] {
          background-color: #e9ecef;
          opacity: 1;
        }

        select.form-control:focus::-ms-value {
          color: #495057;
          background-color: #ffffff;
        }

        .form-control-file,
        .form-control-range {
          display: block;
          width: 100%;
        }

        .col-form-label {
          padding-top: calc(0.875rem + 1px);
          padding-bottom: calc(0.875rem + 1px);
          margin-bottom: 0;
          font-size: inherit;
          line-height: 1;
        }

        .col-form-label-lg {
          padding-top: calc(0.94rem + 1px);
          padding-bottom: calc(0.94rem + 1px);
          font-size: 1.25rem;
          line-height: 1.5;
        }

        .col-form-label-sm {
          padding-top: calc(0.5rem + 1px);
          padding-bottom: calc(0.5rem + 1px);
          font-size: 0.875rem;
          line-height: 1.5;
        }

        .form-control-plaintext {
          display: block;
          width: 100%;
          padding-top: 0.875rem;
          padding-bottom: 0.875rem;
          margin-bottom: 0;
          line-height: 1;
          color: #212529;
          background-color: transparent;
          border: solid transparent;
          border-width: 1px 0;
        }

        .form-control-plaintext.form-control-sm, .form-control-plaintext.form-control-lg {
          padding-right: 0;
          padding-left: 0;
        }

        .form-control-sm {
          height: calc(1.5em + 0.5rem + 2px);
          padding: 0.5rem 0.81rem;
          font-size: 0.875rem;
          line-height: 1.5;
          border-radius: 0.2rem;
        }

        .form-control-lg {
          height: calc(1.5em + 1rem + 2px);
          padding: 0.94rem 1.94rem;
          font-size: 1.25rem;
          line-height: 1.5;
          border-radius: 0.3rem;
        }

        select.form-control[size], select.form-control[multiple] {
          height: auto;
        }

        textarea.form-control {
          height: auto;
        }

        .form-group {
          margin-bottom: 1rem;
        }

        .form-text {
          display: block;
          margin-top: 0.25rem;
        }

        .form-row {
          display: flex;
          flex-wrap: wrap;
          margin-right: -5px;
          margin-left: -5px;
        }

        .form-row > .col,
        .form-row > [class*="col-"] {
          padding-right: 5px;
          padding-left: 5px;
        }

        .form-check {
          position: relative;
          display: block;
          padding-left: 1.25rem;
        }

        .form-check-input {
          position: absolute;
          margin-top: 0.3rem;
          margin-left: -1.25rem;
        }

        .form-check-input:disabled ~ .form-check-label {
          color: #9c9fa6;
        }

        .form-check-label {
          margin-bottom: 0;
        }

        .form-check-inline {
          display: inline-flex;
          align-items: center;
          padding-left: 0;
          margin-right: 0.75rem;
        }

        .form-check-inline .form-check-input {
          position: static;
          margin-top: 0;
          margin-right: 0.3125rem;
          margin-left: 0;
        }

        .valid-feedback {
          display: none;
          width: 100%;
          margin-top: 0.25rem;
          font-size: 80%;
          color: #28a745;
        }

        .valid-tooltip {
          position: absolute;
          top: 100%;
          z-index: 5;
          display: none;
          max-width: 100%;
          padding: 0.25rem 0.5rem;
          margin-top: .1rem;
          font-size: 0.875rem;
          line-height: 1.5;
          color: #fff;
          background-color: rgba(40, 167, 69, 0.9);
          border-radius: 0.25rem;
        }

        .was-validated .form-control:valid, .form-control.is-valid {
          border-color: #28a745;
          padding-right: calc(1.5em + 0.75rem);
          background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%2328a745' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e");
          background-repeat: no-repeat;
          background-position: center right calc(0.375em + 0.1875rem);
          background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
        }

        .was-validated .form-control:valid:focus, .form-control.is-valid:focus {
          border-color: #28a745;
          box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.25);
        }

        .was-validated .form-control:valid ~ .valid-feedback,
        .was-validated .form-control:valid ~ .valid-tooltip, .form-control.is-valid ~ .valid-feedback,
        .form-control.is-valid ~ .valid-tooltip {
          display: block;
        }

        .was-validated textarea.form-control:valid, textarea.form-control.is-valid {
          padding-right: calc(1.5em + 0.75rem);
          background-position: top calc(0.375em + 0.1875rem) right calc(0.375em + 0.1875rem);
        }

        .was-validated .custom-select:valid, .custom-select.is-valid {
          border-color: #28a745;
          padding-right: calc((1em + 0.75rem) * 3 / 4 + 1.75rem);
          background: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3e%3cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e") no-repeat right 0.75rem center/8px 10px, url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%2328a745' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e") #fff no-repeat center right 1.75rem/calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
        }

        .was-validated .custom-select:valid:focus, .custom-select.is-valid:focus {
          border-color: #28a745;
          box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.25);
        }

        .was-validated .custom-select:valid ~ .valid-feedback,
        .was-validated .custom-select:valid ~ .valid-tooltip, .custom-select.is-valid ~ .valid-feedback,
        .custom-select.is-valid ~ .valid-tooltip {
          display: block;
        }

        .was-validated .form-control-file:valid ~ .valid-feedback,
        .was-validated .form-control-file:valid ~ .valid-tooltip, .form-control-file.is-valid ~ .valid-feedback,
        .form-control-file.is-valid ~ .valid-tooltip {
          display: block;
        }

        .was-validated .form-check-input:valid ~ .form-check-label, .form-check-input.is-valid ~ .form-check-label {
          color: #28a745;
        }

        .was-validated .form-check-input:valid ~ .valid-feedback,
        .was-validated .form-check-input:valid ~ .valid-tooltip, .form-check-input.is-valid ~ .valid-feedback,
        .form-check-input.is-valid ~ .valid-tooltip {
          display: block;
        }

        .was-validated .custom-control-input:valid ~ .custom-control-label, .custom-control-input.is-valid ~ .custom-control-label {
          color: #28a745;
        }

        .was-validated .custom-control-input:valid ~ .custom-control-label::before, .custom-control-input.is-valid ~ .custom-control-label::before {
          border-color: #28a745;
        }

        .was-validated .custom-control-input:valid ~ .valid-feedback,
        .was-validated .custom-control-input:valid ~ .valid-tooltip, .custom-control-input.is-valid ~ .valid-feedback,
        .custom-control-input.is-valid ~ .valid-tooltip {
          display: block;
        }

        .was-validated .custom-control-input:valid:checked ~ .custom-control-label::before, .custom-control-input.is-valid:checked ~ .custom-control-label::before {
          border-color: #34ce57;
          background-color: #34ce57;
        }

        .was-validated .custom-control-input:valid:focus ~ .custom-control-label::before, .custom-control-input.is-valid:focus ~ .custom-control-label::before {
          box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.25);
        }

        .was-validated .custom-control-input:valid:focus:not(:checked) ~ .custom-control-label::before, .custom-control-input.is-valid:focus:not(:checked) ~ .custom-control-label::before {
          border-color: #28a745;
        }

        .was-validated .custom-file-input:valid ~ .custom-file-label, .custom-file-input.is-valid ~ .custom-file-label {
          border-color: #28a745;
        }

        .was-validated .custom-file-input:valid ~ .valid-feedback,
        .was-validated .custom-file-input:valid ~ .valid-tooltip, .custom-file-input.is-valid ~ .valid-feedback,
        .custom-file-input.is-valid ~ .valid-tooltip {
          display: block;
        }

        .was-validated .custom-file-input:valid:focus ~ .custom-file-label, .custom-file-input.is-valid:focus ~ .custom-file-label {
          border-color: #28a745;
          box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.25);
        }

        .invalid-feedback {
          display: none;
          width: 100%;
          margin-top: 0.25rem;
          font-size: 80%;
          color: #dc3545;
        }

        .invalid-tooltip {
          position: absolute;
          top: 100%;
          z-index: 5;
          display: none;
          max-width: 100%;
          padding: 0.25rem 0.5rem;
          margin-top: .1rem;
          font-size: 0.875rem;
          line-height: 1.5;
          color: #fff;
          background-color: rgba(220, 53, 69, 0.9);
          border-radius: 0.25rem;
        }

        .was-validated .form-control:invalid, .form-control.is-invalid {
          border-color: #dc3545;
          padding-right: calc(1.5em + 0.75rem);
          background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23dc3545' viewBox='-2 -2 7 7'%3e%3cpath stroke='%23dc3545' d='M0 0l3 3m0-3L0 3'/%3e%3ccircle r='.5'/%3e%3ccircle cx='3' r='.5'/%3e%3ccircle cy='3' r='.5'/%3e%3ccircle cx='3' cy='3' r='.5'/%3e%3c/svg%3E");
          background-repeat: no-repeat;
          background-position: center right calc(0.375em + 0.1875rem);
          background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
        }

        .was-validated .form-control:invalid:focus, .form-control.is-invalid:focus {
          border-color: #dc3545;
          box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.25);
        }

        .was-validated .form-control:invalid ~ .invalid-feedback,
        .was-validated .form-control:invalid ~ .invalid-tooltip, .form-control.is-invalid ~ .invalid-feedback,
        .form-control.is-invalid ~ .invalid-tooltip {
          display: block;
        }

        .was-validated textarea.form-control:invalid, textarea.form-control.is-invalid {
          padding-right: calc(1.5em + 0.75rem);
          background-position: top calc(0.375em + 0.1875rem) right calc(0.375em + 0.1875rem);
        }

        .was-validated .custom-select:invalid, .custom-select.is-invalid {
          border-color: #dc3545;
          padding-right: calc((1em + 0.75rem) * 3 / 4 + 1.75rem);
          background: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3e%3cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e") no-repeat right 0.75rem center/8px 10px, url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23dc3545' viewBox='-2 -2 7 7'%3e%3cpath stroke='%23dc3545' d='M0 0l3 3m0-3L0 3'/%3e%3ccircle r='.5'/%3e%3ccircle cx='3' r='.5'/%3e%3ccircle cy='3' r='.5'/%3e%3ccircle cx='3' cy='3' r='.5'/%3e%3c/svg%3E") #fff no-repeat center right 1.75rem/calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
        }

        .was-validated .custom-select:invalid:focus, .custom-select.is-invalid:focus {
          border-color: #dc3545;
          box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.25);
        }

        .was-validated .custom-select:invalid ~ .invalid-feedback,
        .was-validated .custom-select:invalid ~ .invalid-tooltip, .custom-select.is-invalid ~ .invalid-feedback,
        .custom-select.is-invalid ~ .invalid-tooltip {
          display: block;
        }

        .was-validated .form-control-file:invalid ~ .invalid-feedback,
        .was-validated .form-control-file:invalid ~ .invalid-tooltip, .form-control-file.is-invalid ~ .invalid-feedback,
        .form-control-file.is-invalid ~ .invalid-tooltip {
          display: block;
        }

        .was-validated .form-check-input:invalid ~ .form-check-label, .form-check-input.is-invalid ~ .form-check-label {
          color: #dc3545;
        }

        .was-validated .form-check-input:invalid ~ .invalid-feedback,
        .was-validated .form-check-input:invalid ~ .invalid-tooltip, .form-check-input.is-invalid ~ .invalid-feedback,
        .form-check-input.is-invalid ~ .invalid-tooltip {
          display: block;
        }

        .was-validated .custom-control-input:invalid ~ .custom-control-label, .custom-control-input.is-invalid ~ .custom-control-label {
          color: #dc3545;
        }

        .was-validated .custom-control-input:invalid ~ .custom-control-label::before, .custom-control-input.is-invalid ~ .custom-control-label::before {
          border-color: #dc3545;
        }

        .was-validated .custom-control-input:invalid ~ .invalid-feedback,
        .was-validated .custom-control-input:invalid ~ .invalid-tooltip, .custom-control-input.is-invalid ~ .invalid-feedback,
        .custom-control-input.is-invalid ~ .invalid-tooltip {
          display: block;
        }

        .was-validated .custom-control-input:invalid:checked ~ .custom-control-label::before, .custom-control-input.is-invalid:checked ~ .custom-control-label::before {
          border-color: #e4606d;
          background-color: #e4606d;
        }

        .was-validated .custom-control-input:invalid:focus ~ .custom-control-label::before, .custom-control-input.is-invalid:focus ~ .custom-control-label::before {
          box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.25);
        }

        .was-validated .custom-control-input:invalid:focus:not(:checked) ~ .custom-control-label::before, .custom-control-input.is-invalid:focus:not(:checked) ~ .custom-control-label::before {
          border-color: #dc3545;
        }

        .was-validated .custom-file-input:invalid ~ .custom-file-label, .custom-file-input.is-invalid ~ .custom-file-label {
          border-color: #dc3545;
        }

        .was-validated .custom-file-input:invalid ~ .invalid-feedback,
        .was-validated .custom-file-input:invalid ~ .invalid-tooltip, .custom-file-input.is-invalid ~ .invalid-feedback,
        .custom-file-input.is-invalid ~ .invalid-tooltip {
          display: block;
        }

        .was-validated .custom-file-input:invalid:focus ~ .custom-file-label, .custom-file-input.is-invalid:focus ~ .custom-file-label {
          border-color: #dc3545;
          box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.25);
        }

        .form-inline {
          display: flex;
          flex-flow: row wrap;
          align-items: center;
        }

        .form-inline .form-check {
          width: 100%;
        }

        @media (min-width: 576px) {
          .form-inline label {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 0;
          }
          .form-inline .form-group {
            display: flex;
            flex: 0 0 auto;
            flex-flow: row wrap;
            align-items: center;
            margin-bottom: 0;
          }
          .form-inline .form-control {
            display: inline-block;
            width: auto;
            vertical-align: middle;
          }
          .form-inline .form-control-plaintext {
            display: inline-block;
          }
          .form-inline .input-group,
          .form-inline .custom-select {
            width: auto;
          }
          .form-inline .form-check {
            display: flex;
            align-items: center;
            justify-content: center;
            width: auto;
            padding-left: 0;
          }
          .form-inline .form-check-input {
            position: relative;
            flex-shrink: 0;
            margin-top: 0;
            margin-right: 0.25rem;
            margin-left: 0;
          }
          .form-inline .custom-control {
            align-items: center;
            justify-content: center;
          }
          .form-inline .custom-control-label {
            margin-bottom: 0;
          }
        }

        .btn {
          display: inline-block;
          font-weight: 400;
          color: #343a40;
          text-align: center;
          vertical-align: middle;
          user-select: none;
          background-color: transparent;
          border: 1px solid transparent;
          padding: 0.875rem 2.5rem;
          font-size: 0.875rem;
          line-height: 1;
          border-radius: 0.1875rem;
          transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        @media (prefers-reduced-motion: reduce) {
          .btn {
            transition: none;
          }
        }

        .btn:hover {
          color: #343a40;
          text-decoration: none;
        }

        .btn:focus, .btn.focus {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .btn.disabled, .btn:disabled {
          opacity: 0.65;
        }

        a.btn.disabled,
        fieldset:disabled a.btn {
          pointer-events: none;
        }

        .btn-primary {
          color: #fff;
          background-color: #b66dff;
          border-color: #b66dff;
        }

        .btn-primary:hover {
          color: #fff;
          background-color: #a347ff;
          border-color: #9d3aff;
        }

        .btn-primary:focus, .btn-primary.focus {
          box-shadow: 0 0 0 0.2rem rgba(193, 131, 255, 0.5);
        }

        .btn-primary.disabled, .btn-primary:disabled {
          color: #fff;
          background-color: #b66dff;
          border-color: #b66dff;
        }

        .btn-primary:not(:disabled):not(.disabled):active, .btn-primary:not(:disabled):not(.disabled).active,
        .show > .btn-primary.dropdown-toggle {
          color: #fff;
          background-color: #9d3aff;
          border-color: #962dff;
        }

        .btn-primary:not(:disabled):not(.disabled):active:focus, .btn-primary:not(:disabled):not(.disabled).active:focus,
        .show > .btn-primary.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(193, 131, 255, 0.5);
        }

        .btn-secondary {
          color: #212529;
          background-color: #d8d8d8;
          border-color: #d8d8d8;
        }

        .btn-secondary:hover {
          color: #212529;
          background-color: #c5c5c5;
          border-color: #bfbfbf;
        }

        .btn-secondary:focus, .btn-secondary.focus {
          box-shadow: 0 0 0 0.2rem rgba(189, 189, 190, 0.5);
        }

        .btn-secondary.disabled, .btn-secondary:disabled {
          color: #212529;
          background-color: #d8d8d8;
          border-color: #d8d8d8;
        }

        .btn-secondary:not(:disabled):not(.disabled):active, .btn-secondary:not(:disabled):not(.disabled).active,
        .show > .btn-secondary.dropdown-toggle {
          color: #212529;
          background-color: #bfbfbf;
          border-color: #b8b8b8;
        }

        .btn-secondary:not(:disabled):not(.disabled):active:focus, .btn-secondary:not(:disabled):not(.disabled).active:focus,
        .show > .btn-secondary.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(189, 189, 190, 0.5);
        }

        .btn-success {
          color: #212529;
          background-color: #1bcfb4;
          border-color: #1bcfb4;
        }

        .btn-success:hover {
          color: #fff;
          background-color: #17ad97;
          border-color: #15a28d;
        }

        .btn-success:focus, .btn-success.focus {
          box-shadow: 0 0 0 0.2rem rgba(28, 182, 159, 0.5);
        }

        .btn-success.disabled, .btn-success:disabled {
          color: #212529;
          background-color: #1bcfb4;
          border-color: #1bcfb4;
        }

        .btn-success:not(:disabled):not(.disabled):active, .btn-success:not(:disabled):not(.disabled).active,
        .show > .btn-success.dropdown-toggle {
          color: #fff;
          background-color: #15a28d;
          border-color: #149783;
        }

        .btn-success:not(:disabled):not(.disabled):active:focus, .btn-success:not(:disabled):not(.disabled).active:focus,
        .show > .btn-success.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(28, 182, 159, 0.5);
        }

        .btn-info {
          color: #fff;
          background-color: #198ae3;
          border-color: #198ae3;
        }

        .btn-info:hover {
          color: #fff;
          background-color: #1575c1;
          border-color: #146eb5;
        }

        .btn-info:focus, .btn-info.focus {
          box-shadow: 0 0 0 0.2rem rgba(60, 156, 231, 0.5);
        }

        .btn-info.disabled, .btn-info:disabled {
          color: #fff;
          background-color: #198ae3;
          border-color: #198ae3;
        }

        .btn-info:not(:disabled):not(.disabled):active, .btn-info:not(:disabled):not(.disabled).active,
        .show > .btn-info.dropdown-toggle {
          color: #fff;
          background-color: #146eb5;
          border-color: #1367aa;
        }

        .btn-info:not(:disabled):not(.disabled):active:focus, .btn-info:not(:disabled):not(.disabled).active:focus,
        .show > .btn-info.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(60, 156, 231, 0.5);
        }

        .btn-warning {
          color: #212529;
          background-color: #fed713;
          border-color: #fed713;
        }

        .btn-warning:hover {
          color: #212529;
          background-color: #eac301;
          border-color: #ddb901;
        }

        .btn-warning:focus, .btn-warning.focus {
          box-shadow: 0 0 0 0.2rem rgba(221, 188, 22, 0.5);
        }

        .btn-warning.disabled, .btn-warning:disabled {
          color: #212529;
          background-color: #fed713;
          border-color: #fed713;
        }

        .btn-warning:not(:disabled):not(.disabled):active, .btn-warning:not(:disabled):not(.disabled).active,
        .show > .btn-warning.dropdown-toggle {
          color: #212529;
          background-color: #ddb901;
          border-color: #d0ae01;
        }

        .btn-warning:not(:disabled):not(.disabled):active:focus, .btn-warning:not(:disabled):not(.disabled).active:focus,
        .show > .btn-warning.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(221, 188, 22, 0.5);
        }

        .btn-danger {
          color: #212529;
          background-color: #fe7c96;
          border-color: #fe7c96;
        }

        .btn-danger:hover {
          color: #fff;
          background-color: #fe5678;
          border-color: #fe496d;
        }

        .btn-danger:focus, .btn-danger.focus {
          box-shadow: 0 0 0 0.2rem rgba(221, 111, 134, 0.5);
        }

        .btn-danger.disabled, .btn-danger:disabled {
          color: #212529;
          background-color: #fe7c96;
          border-color: #fe7c96;
        }

        .btn-danger:not(:disabled):not(.disabled):active, .btn-danger:not(:disabled):not(.disabled).active,
        .show > .btn-danger.dropdown-toggle {
          color: #fff;
          background-color: #fe496d;
          border-color: #fe3d63;
        }

        .btn-danger:not(:disabled):not(.disabled):active:focus, .btn-danger:not(:disabled):not(.disabled).active:focus,
        .show > .btn-danger.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(221, 111, 134, 0.5);
        }

        .btn-light {
          color: #212529;
          background-color: #f8f9fa;
          border-color: #f8f9fa;
        }

        .btn-light:hover {
          color: #212529;
          background-color: #e2e6ea;
          border-color: #dae0e5;
        }

        .btn-light:focus, .btn-light.focus {
          box-shadow: 0 0 0 0.2rem rgba(216, 217, 219, 0.5);
        }

        .btn-light.disabled, .btn-light:disabled {
          color: #212529;
          background-color: #f8f9fa;
          border-color: #f8f9fa;
        }

        .btn-light:not(:disabled):not(.disabled):active, .btn-light:not(:disabled):not(.disabled).active,
        .show > .btn-light.dropdown-toggle {
          color: #212529;
          background-color: #dae0e5;
          border-color: #d3d9df;
        }

        .btn-light:not(:disabled):not(.disabled):active:focus, .btn-light:not(:disabled):not(.disabled).active:focus,
        .show > .btn-light.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(216, 217, 219, 0.5);
        }

        .btn-dark {
          color: #fff;
          background-color: #3e4b5b;
          border-color: #3e4b5b;
        }

        .btn-dark:hover {
          color: #fff;
          background-color: #2f3844;
          border-color: #29323d;
        }

        .btn-dark:focus, .btn-dark.focus {
          box-shadow: 0 0 0 0.2rem rgba(91, 102, 116, 0.5);
        }

        .btn-dark.disabled, .btn-dark:disabled {
          color: #fff;
          background-color: #3e4b5b;
          border-color: #3e4b5b;
        }

        .btn-dark:not(:disabled):not(.disabled):active, .btn-dark:not(:disabled):not(.disabled).active,
        .show > .btn-dark.dropdown-toggle {
          color: #fff;
          background-color: #29323d;
          border-color: #242c35;
        }

        .btn-dark:not(:disabled):not(.disabled):active:focus, .btn-dark:not(:disabled):not(.disabled).active:focus,
        .show > .btn-dark.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(91, 102, 116, 0.5);
        }

        .btn-outline-primary {
          color: #b66dff;
          border-color: #b66dff;
        }

        .btn-outline-primary:hover {
          color: #fff;
          background-color: #b66dff;
          border-color: #b66dff;
        }

        .btn-outline-primary:focus, .btn-outline-primary.focus {
          box-shadow: 0 0 0 0.2rem rgba(182, 109, 255, 0.5);
        }

        .btn-outline-primary.disabled, .btn-outline-primary:disabled {
          color: #b66dff;
          background-color: transparent;
        }

        .btn-outline-primary:not(:disabled):not(.disabled):active, .btn-outline-primary:not(:disabled):not(.disabled).active,
        .show > .btn-outline-primary.dropdown-toggle {
          color: #fff;
          background-color: #b66dff;
          border-color: #b66dff;
        }

        .btn-outline-primary:not(:disabled):not(.disabled):active:focus, .btn-outline-primary:not(:disabled):not(.disabled).active:focus,
        .show > .btn-outline-primary.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(182, 109, 255, 0.5);
        }

        .btn-outline-secondary {
          color: #d8d8d8;
          border-color: #d8d8d8;
        }

        .btn-outline-secondary:hover {
          color: #212529;
          background-color: #d8d8d8;
          border-color: #d8d8d8;
        }

        .btn-outline-secondary:focus, .btn-outline-secondary.focus {
          box-shadow: 0 0 0 0.2rem rgba(216, 216, 216, 0.5);
        }

        .btn-outline-secondary.disabled, .btn-outline-secondary:disabled {
          color: #d8d8d8;
          background-color: transparent;
        }

        .btn-outline-secondary:not(:disabled):not(.disabled):active, .btn-outline-secondary:not(:disabled):not(.disabled).active,
        .show > .btn-outline-secondary.dropdown-toggle {
          color: #212529;
          background-color: #d8d8d8;
          border-color: #d8d8d8;
        }

        .btn-outline-secondary:not(:disabled):not(.disabled):active:focus, .btn-outline-secondary:not(:disabled):not(.disabled).active:focus,
        .show > .btn-outline-secondary.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(216, 216, 216, 0.5);
        }

        .btn-outline-success {
          color: #1bcfb4;
          border-color: #1bcfb4;
        }

        .btn-outline-success:hover {
          color: #212529;
          background-color: #1bcfb4;
          border-color: #1bcfb4;
        }

        .btn-outline-success:focus, .btn-outline-success.focus {
          box-shadow: 0 0 0 0.2rem rgba(27, 207, 180, 0.5);
        }

        .btn-outline-success.disabled, .btn-outline-success:disabled {
          color: #1bcfb4;
          background-color: transparent;
        }

        .btn-outline-success:not(:disabled):not(.disabled):active, .btn-outline-success:not(:disabled):not(.disabled).active,
        .show > .btn-outline-success.dropdown-toggle {
          color: #212529;
          background-color: #1bcfb4;
          border-color: #1bcfb4;
        }

        .btn-outline-success:not(:disabled):not(.disabled):active:focus, .btn-outline-success:not(:disabled):not(.disabled).active:focus,
        .show > .btn-outline-success.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(27, 207, 180, 0.5);
        }

        .btn-outline-info {
          color: #198ae3;
          border-color: #198ae3;
        }

        .btn-outline-info:hover {
          color: #fff;
          background-color: #198ae3;
          border-color: #198ae3;
        }

        .btn-outline-info:focus, .btn-outline-info.focus {
          box-shadow: 0 0 0 0.2rem rgba(25, 138, 227, 0.5);
        }

        .btn-outline-info.disabled, .btn-outline-info:disabled {
          color: #198ae3;
          background-color: transparent;
        }

        .btn-outline-info:not(:disabled):not(.disabled):active, .btn-outline-info:not(:disabled):not(.disabled).active,
        .show > .btn-outline-info.dropdown-toggle {
          color: #fff;
          background-color: #198ae3;
          border-color: #198ae3;
        }

        .btn-outline-info:not(:disabled):not(.disabled):active:focus, .btn-outline-info:not(:disabled):not(.disabled).active:focus,
        .show > .btn-outline-info.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(25, 138, 227, 0.5);
        }

        .btn-outline-warning {
          color: #fed713;
          border-color: #fed713;
        }

        .btn-outline-warning:hover {
          color: #212529;
          background-color: #fed713;
          border-color: #fed713;
        }

        .btn-outline-warning:focus, .btn-outline-warning.focus {
          box-shadow: 0 0 0 0.2rem rgba(254, 215, 19, 0.5);
        }

        .btn-outline-warning.disabled, .btn-outline-warning:disabled {
          color: #fed713;
          background-color: transparent;
        }

        .btn-outline-warning:not(:disabled):not(.disabled):active, .btn-outline-warning:not(:disabled):not(.disabled).active,
        .show > .btn-outline-warning.dropdown-toggle {
          color: #212529;
          background-color: #fed713;
          border-color: #fed713;
        }

        .btn-outline-warning:not(:disabled):not(.disabled):active:focus, .btn-outline-warning:not(:disabled):not(.disabled).active:focus,
        .show > .btn-outline-warning.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(254, 215, 19, 0.5);
        }

        .btn-outline-danger {
          color: #fe7c96;
          border-color: #fe7c96;
        }

        .btn-outline-danger:hover {
          color: #212529;
          background-color: #fe7c96;
          border-color: #fe7c96;
        }

        .btn-outline-danger:focus, .btn-outline-danger.focus {
          box-shadow: 0 0 0 0.2rem rgba(254, 124, 150, 0.5);
        }

        .btn-outline-danger.disabled, .btn-outline-danger:disabled {
          color: #fe7c96;
          background-color: transparent;
        }

        .btn-outline-danger:not(:disabled):not(.disabled):active, .btn-outline-danger:not(:disabled):not(.disabled).active,
        .show > .btn-outline-danger.dropdown-toggle {
          color: #212529;
          background-color: #fe7c96;
          border-color: #fe7c96;
        }

        .btn-outline-danger:not(:disabled):not(.disabled):active:focus, .btn-outline-danger:not(:disabled):not(.disabled).active:focus,
        .show > .btn-outline-danger.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(254, 124, 150, 0.5);
        }

        .btn-outline-light {
          color: #f8f9fa;
          border-color: #f8f9fa;
        }

        .btn-outline-light:hover {
          color: #212529;
          background-color: #f8f9fa;
          border-color: #f8f9fa;
        }

        .btn-outline-light:focus, .btn-outline-light.focus {
          box-shadow: 0 0 0 0.2rem rgba(248, 249, 250, 0.5);
        }

        .btn-outline-light.disabled, .btn-outline-light:disabled {
          color: #f8f9fa;
          background-color: transparent;
        }

        .btn-outline-light:not(:disabled):not(.disabled):active, .btn-outline-light:not(:disabled):not(.disabled).active,
        .show > .btn-outline-light.dropdown-toggle {
          color: #212529;
          background-color: #f8f9fa;
          border-color: #f8f9fa;
        }

        .btn-outline-light:not(:disabled):not(.disabled):active:focus, .btn-outline-light:not(:disabled):not(.disabled).active:focus,
        .show > .btn-outline-light.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(248, 249, 250, 0.5);
        }

        .btn-outline-dark {
          color: #3e4b5b;
          border-color: #3e4b5b;
        }

        .btn-outline-dark:hover {
          color: #fff;
          background-color: #3e4b5b;
          border-color: #3e4b5b;
        }

        .btn-outline-dark:focus, .btn-outline-dark.focus {
          box-shadow: 0 0 0 0.2rem rgba(62, 75, 91, 0.5);
        }

        .btn-outline-dark.disabled, .btn-outline-dark:disabled {
          color: #3e4b5b;
          background-color: transparent;
        }

        .btn-outline-dark:not(:disabled):not(.disabled):active, .btn-outline-dark:not(:disabled):not(.disabled).active,
        .show > .btn-outline-dark.dropdown-toggle {
          color: #fff;
          background-color: #3e4b5b;
          border-color: #3e4b5b;
        }

        .btn-outline-dark:not(:disabled):not(.disabled):active:focus, .btn-outline-dark:not(:disabled):not(.disabled).active:focus,
        .show > .btn-outline-dark.dropdown-toggle:focus {
          box-shadow: 0 0 0 0.2rem rgba(62, 75, 91, 0.5);
        }

        .btn-link {
          font-weight: 400;
          color: #007bff;
          text-decoration: none;
        }

        .btn-link:hover {
          color: #0056b3;
          text-decoration: underline;
        }

        .btn-link:focus, .btn-link.focus {
          text-decoration: underline;
          box-shadow: none;
        }

        .btn-link:disabled, .btn-link.disabled {
          color: #6c757d;
          pointer-events: none;
        }

        .btn-lg, .btn-group-lg > .btn {
          padding: 1rem 3rem;
          font-size: 0.875rem;
          line-height: 1.5;
          border-radius: 0.1875rem;
        }

        .btn-sm, .btn-group-sm > .btn {
          padding: 0.5rem 0.81rem;
          font-size: 0.875rem;
          line-height: 1.5;
          border-radius: 0.1875rem;
        }

        .btn-block {
          display: block;
          width: 100%;
        }

        .btn-block + .btn-block {
          margin-top: 0.5rem;
        }

        input[type="submit"].btn-block,
        input[type="reset"].btn-block,
        input[type="button"].btn-block {
          width: 100%;
        }

        .fade {
          transition: opacity 0.15s linear;
        }

        @media (prefers-reduced-motion: reduce) {
          .fade {
            transition: none;
          }
        }

        .fade:not(.show) {
          opacity: 0;
        }

        .collapse:not(.show) {
          display: none;
        }

        .collapsing {
          position: relative;
          height: 0;
          overflow: hidden;
          transition: height 0.35s ease;
        }

        @media (prefers-reduced-motion: reduce) {
          .collapsing {
            transition: none;
          }
        }

        .dropup,
        .dropright,
        .dropdown,
        .dropleft {
          position: relative;
        }

        .dropdown-toggle {
          white-space: nowrap;
        }

        .dropdown-toggle::after {
          display: inline-block;
          margin-left: 0.255em;
          vertical-align: 0.255em;
          content: "";
          border-top: 0.3em solid;
          border-right: 0.3em solid transparent;
          border-bottom: 0;
          border-left: 0.3em solid transparent;
        }

        .dropdown-toggle:empty::after {
          margin-left: 0;
        }

        .dropdown-menu {
          position: absolute;
          top: 100%;
          left: 0;
          z-index: 1000;
          display: none;
          float: left;
          min-width: 10rem;
          padding: 0.5rem 0;
          margin: 0.125rem 0 0;
          font-size: 1rem;
          color: #212529;
          text-align: left;
          list-style: none;
          background-color: #fff;
          background-clip: padding-box;
          border: 1px solid #ebedf2;
          border-radius: 0.25rem;
        }

        .dropdown-menu-left {
          right: auto;
          left: 0;
        }

        .dropdown-menu-right {
          right: 0;
          left: auto;
        }

        @media (min-width: 576px) {
          .dropdown-menu-sm-left {
            right: auto;
            left: 0;
          }
          .dropdown-menu-sm-right {
            right: 0;
            left: auto;
          }
        }

        @media (min-width: 768px) {
          .dropdown-menu-md-left {
            right: auto;
            left: 0;
          }
          .dropdown-menu-md-right {
            right: 0;
            left: auto;
          }
        }

        @media (min-width: 992px) {
          .dropdown-menu-lg-left {
            right: auto;
            left: 0;
          }
          .dropdown-menu-lg-right {
            right: 0;
            left: auto;
          }
        }

        @media (min-width: 1200px) {
          .dropdown-menu-xl-left {
            right: auto;
            left: 0;
          }
          .dropdown-menu-xl-right {
            right: 0;
            left: auto;
          }
        }

        .dropup .dropdown-menu {
          top: auto;
          bottom: 100%;
          margin-top: 0;
          margin-bottom: 0.125rem;
        }

        .dropup .dropdown-toggle::after {
          display: inline-block;
          margin-left: 0.255em;
          vertical-align: 0.255em;
          content: "";
          border-top: 0;
          border-right: 0.3em solid transparent;
          border-bottom: 0.3em solid;
          border-left: 0.3em solid transparent;
        }

        .dropup .dropdown-toggle:empty::after {
          margin-left: 0;
        }

        .dropright .dropdown-menu {
          top: 0;
          right: auto;
          left: 100%;
          margin-top: 0;
          margin-left: 0.125rem;
        }

        .dropright .dropdown-toggle::after {
          display: inline-block;
          margin-left: 0.255em;
          vertical-align: 0.255em;
          content: "";
          border-top: 0.3em solid transparent;
          border-right: 0;
          border-bottom: 0.3em solid transparent;
          border-left: 0.3em solid;
        }

        .dropright .dropdown-toggle:empty::after {
          margin-left: 0;
        }

        .dropright .dropdown-toggle::after {
          vertical-align: 0;
        }

        .dropleft .dropdown-menu {
          top: 0;
          right: 100%;
          left: auto;
          margin-top: 0;
          margin-right: 0.125rem;
        }

        .dropleft .dropdown-toggle::after {
          display: inline-block;
          margin-left: 0.255em;
          vertical-align: 0.255em;
          content: "";
        }

        .dropleft .dropdown-toggle::after {
          display: none;
        }

        .dropleft .dropdown-toggle::before {
          display: inline-block;
          margin-right: 0.255em;
          vertical-align: 0.255em;
          content: "";
          border-top: 0.3em solid transparent;
          border-right: 0.3em solid;
          border-bottom: 0.3em solid transparent;
        }

        .dropleft .dropdown-toggle:empty::after {
          margin-left: 0;
        }

        .dropleft .dropdown-toggle::before {
          vertical-align: 0;
        }

        .dropdown-menu[x-placement^="top"], .dropdown-menu[x-placement^="right"], .dropdown-menu[x-placement^="bottom"], .dropdown-menu[x-placement^="left"] {
          right: auto;
          bottom: auto;
        }

        .dropdown-divider {
          height: 0;
          margin: 0.5rem 0;
          overflow: hidden;
          border-top: 1px solid #ebedf2;
        }

        .dropdown-item {
          display: block;
          width: 100%;
          padding: 0.25rem 1.5rem;
          clear: both;
          font-weight: 400;
          color: #343a40;
          text-align: inherit;
          white-space: nowrap;
          background-color: transparent;
          border: 0;
        }

        .dropdown-item:hover, .dropdown-item:focus {
          color: #16181b;
          text-decoration: none;
          background-color: #f8f9fa;
        }

        .dropdown-item.active, .dropdown-item:active {
          color: #fff;
          text-decoration: none;
          background-color: #007bff;
        }

        .dropdown-item.disabled, .dropdown-item:disabled {
          color: #6c757d;
          pointer-events: none;
          background-color: transparent;
        }

        .dropdown-menu.show {
          display: block;
        }

        .dropdown-header {
          display: block;
          padding: 0.5rem 1.5rem;
          margin-bottom: 0;
          font-size: 0.875rem;
          color: #343a40;
          white-space: nowrap;
        }

        .dropdown-item-text {
          display: block;
          padding: 0.25rem 1.5rem;
          color: #343a40;
        }

        .btn-group,
        .btn-group-vertical {
          position: relative;
          display: inline-flex;
          vertical-align: middle;
        }

        .btn-group > .btn,
        .btn-group-vertical > .btn {
          position: relative;
          flex: 1 1 auto;
        }

        .btn-group > .btn:hover,
        .btn-group-vertical > .btn:hover {
          z-index: 1;
        }

        .btn-group > .btn:focus, .btn-group > .btn:active, .btn-group > .btn.active,
        .btn-group-vertical > .btn:focus,
        .btn-group-vertical > .btn:active,
        .btn-group-vertical > .btn.active {
          z-index: 1;
        }

        .btn-toolbar {
          display: flex;
          flex-wrap: wrap;
          justify-content: flex-start;
        }

        .btn-toolbar .input-group {
          width: auto;
        }

        .btn-group > .btn:not(:first-child),
        .btn-group > .btn-group:not(:first-child) {
          margin-left: -1px;
        }

        .btn-group > .btn:not(:last-child):not(.dropdown-toggle),
        .btn-group > .btn-group:not(:last-child) > .btn {
          border-top-right-radius: 0;
          border-bottom-right-radius: 0;
        }

        .btn-group > .btn:not(:first-child),
        .btn-group > .btn-group:not(:first-child) > .btn {
          border-top-left-radius: 0;
          border-bottom-left-radius: 0;
        }

        .dropdown-toggle-split {
          padding-right: 1.875rem;
          padding-left: 1.875rem;
        }

        .dropdown-toggle-split::after,
        .dropup .dropdown-toggle-split::after,
        .dropright .dropdown-toggle-split::after {
          margin-left: 0;
        }

        .dropleft .dropdown-toggle-split::before {
          margin-right: 0;
        }

        .btn-sm + .dropdown-toggle-split, .btn-group-sm > .btn + .dropdown-toggle-split {
          padding-right: 0.6075rem;
          padding-left: 0.6075rem;
        }

        .btn-lg + .dropdown-toggle-split, .btn-group-lg > .btn + .dropdown-toggle-split {
          padding-right: 2.25rem;
          padding-left: 2.25rem;
        }

        .btn-group-vertical {
          flex-direction: column;
          align-items: flex-start;
          justify-content: center;
        }

        .btn-group-vertical > .btn,
        .btn-group-vertical > .btn-group {
          width: 100%;
        }

        .btn-group-vertical > .btn:not(:first-child),
        .btn-group-vertical > .btn-group:not(:first-child) {
          margin-top: -1px;
        }

        .btn-group-vertical > .btn:not(:last-child):not(.dropdown-toggle),
        .btn-group-vertical > .btn-group:not(:last-child) > .btn {
          border-bottom-right-radius: 0;
          border-bottom-left-radius: 0;
        }

        .btn-group-vertical > .btn:not(:first-child),
        .btn-group-vertical > .btn-group:not(:first-child) > .btn {
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }

        .btn-group-toggle > .btn,
        .btn-group-toggle > .btn-group > .btn {
          margin-bottom: 0;
        }

        .btn-group-toggle > .btn input[type="radio"],
        .btn-group-toggle > .btn input[type="checkbox"],
        .btn-group-toggle > .btn-group > .btn input[type="radio"],
        .btn-group-toggle > .btn-group > .btn input[type="checkbox"] {
          position: absolute;
          clip: rect(0, 0, 0, 0);
          pointer-events: none;
        }

        .input-group {
          position: relative;
          display: flex;
          flex-wrap: wrap;
          align-items: stretch;
          width: 100%;
        }

        .input-group > .form-control,
        .input-group > .form-control-plaintext,
        .input-group > .custom-select,
        .input-group > .custom-file {
          position: relative;
          flex: 1 1 auto;
          width: 1%;
          margin-bottom: 0;
        }

        .input-group > .form-control + .form-control,
        .input-group > .form-control + .custom-select,
        .input-group > .form-control + .custom-file,
        .input-group > .form-control-plaintext + .form-control,
        .input-group > .form-control-plaintext + .custom-select,
        .input-group > .form-control-plaintext + .custom-file,
        .input-group > .custom-select + .form-control,
        .input-group > .custom-select + .custom-select,
        .input-group > .custom-select + .custom-file,
        .input-group > .custom-file + .form-control,
        .input-group > .custom-file + .custom-select,
        .input-group > .custom-file + .custom-file {
          margin-left: -1px;
        }

        .input-group > .form-control:focus,
        .input-group > .custom-select:focus,
        .input-group > .custom-file .custom-file-input:focus ~ .custom-file-label {
          z-index: 3;
        }

        .input-group > .custom-file .custom-file-input:focus {
          z-index: 4;
        }

        .input-group > .form-control:not(:last-child),
        .input-group > .custom-select:not(:last-child) {
          border-top-right-radius: 0;
          border-bottom-right-radius: 0;
        }

        .input-group > .form-control:not(:first-child),
        .input-group > .custom-select:not(:first-child) {
          border-top-left-radius: 0;
          border-bottom-left-radius: 0;
        }

        .input-group > .custom-file {
          display: flex;
          align-items: center;
        }

        .input-group > .custom-file:not(:last-child) .custom-file-label,
        .input-group > .custom-file:not(:last-child) .custom-file-label::after {
          border-top-right-radius: 0;
          border-bottom-right-radius: 0;
        }

        .input-group > .custom-file:not(:first-child) .custom-file-label {
          border-top-left-radius: 0;
          border-bottom-left-radius: 0;
        }

        .input-group-prepend,
        .input-group-append {
          display: flex;
        }

        .input-group-prepend .btn,
        .input-group-append .btn {
          position: relative;
          z-index: 2;
        }

        .input-group-prepend .btn:focus,
        .input-group-append .btn:focus {
          z-index: 3;
        }

        .input-group-prepend .btn + .btn,
        .input-group-prepend .btn + .input-group-text,
        .input-group-prepend .input-group-text + .input-group-text,
        .input-group-prepend .input-group-text + .btn,
        .input-group-append .btn + .btn,
        .input-group-append .btn + .input-group-text,
        .input-group-append .input-group-text + .input-group-text,
        .input-group-append .input-group-text + .btn {
          margin-left: -1px;
        }

        .input-group-prepend {
          margin-right: -1px;
        }

        .input-group-append {
          margin-left: -1px;
        }

        .input-group-text {
          display: flex;
          align-items: center;
          padding: 0.875rem 1.375rem;
          margin-bottom: 0;
          font-size: 0.8125rem;
          font-weight: 400;
          line-height: 1;
          color: #495057;
          text-align: center;
          white-space: nowrap;
          background-color: #e9ecef;
          border: 1px solid #ced4da;
          border-radius: 2px;
        }

        .input-group-text input[type="radio"],
        .input-group-text input[type="checkbox"] {
          margin-top: 0;
        }

        .input-group-lg > .form-control:not(textarea),
        .input-group-lg > .custom-select {
          height: calc(1.5em + 1rem + 2px);
        }

        .input-group-lg > .form-control,
        .input-group-lg > .custom-select,
        .input-group-lg > .input-group-prepend > .input-group-text,
        .input-group-lg > .input-group-append > .input-group-text,
        .input-group-lg > .input-group-prepend > .btn,
        .input-group-lg > .input-group-append > .btn {
          padding: 0.94rem 1.94rem;
          font-size: 1.25rem;
          line-height: 1.5;
          border-radius: 0.3rem;
        }

        .input-group-sm > .form-control:not(textarea),
        .input-group-sm > .custom-select {
          height: calc(1.5em + 0.5rem + 2px);
        }

        .input-group-sm > .form-control,
        .input-group-sm > .custom-select,
        .input-group-sm > .input-group-prepend > .input-group-text,
        .input-group-sm > .input-group-append > .input-group-text,
        .input-group-sm > .input-group-prepend > .btn,
        .input-group-sm > .input-group-append > .btn {
          padding: 0.5rem 0.81rem;
          font-size: 0.875rem;
          line-height: 1.5;
          border-radius: 0.2rem;
        }

        .input-group-lg > .custom-select,
        .input-group-sm > .custom-select {
          padding-right: 1.75rem;
        }

        .input-group > .input-group-prepend > .btn,
        .input-group > .input-group-prepend > .input-group-text,
        .input-group > .input-group-append:not(:last-child) > .btn,
        .input-group > .input-group-append:not(:last-child) > .input-group-text,
        .input-group > .input-group-append:last-child > .btn:not(:last-child):not(.dropdown-toggle),
        .input-group > .input-group-append:last-child > .input-group-text:not(:last-child) {
          border-top-right-radius: 0;
          border-bottom-right-radius: 0;
        }

        .input-group > .input-group-append > .btn,
        .input-group > .input-group-append > .input-group-text,
        .input-group > .input-group-prepend:not(:first-child) > .btn,
        .input-group > .input-group-prepend:not(:first-child) > .input-group-text,
        .input-group > .input-group-prepend:first-child > .btn:not(:first-child),
        .input-group > .input-group-prepend:first-child > .input-group-text:not(:first-child) {
          border-top-left-radius: 0;
          border-bottom-left-radius: 0;
        }

        .custom-control {
          position: relative;
          display: block;
          min-height: 1.5rem;
          padding-left: 1.5rem;
        }

        .custom-control-inline {
          display: inline-flex;
          margin-right: 1rem;
        }

        .custom-control-input {
          position: absolute;
          z-index: -1;
          opacity: 0;
        }

        .custom-control-input:checked ~ .custom-control-label::before {
          color: #fff;
          border-color: #007bff;
          background-color: #007bff;
        }

        .custom-control-input:focus ~ .custom-control-label::before {
          box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .custom-control-input:focus:not(:checked) ~ .custom-control-label::before {
          border-color: #80bdff;
        }

        .custom-control-input:not(:disabled):active ~ .custom-control-label::before {
          color: #fff;
          background-color: #b3d7ff;
          border-color: #b3d7ff;
        }

        .custom-control-input:disabled ~ .custom-control-label {
          color: #6c757d;
        }

        .custom-control-input:disabled ~ .custom-control-label::before {
          background-color: #e9ecef;
        }

        .custom-control-label {
          position: relative;
          margin-bottom: 0;
          vertical-align: top;
        }

        .custom-control-label::before {
          position: absolute;
          top: 0.25rem;
          left: -1.5rem;
          display: block;
          width: 1rem;
          height: 1rem;
          pointer-events: none;
          content: "";
          background-color: #fff;
          border: #adb5bd solid 1px;
        }

        .custom-control-label::after {
          position: absolute;
          top: 0.25rem;
          left: -1.5rem;
          display: block;
          width: 1rem;
          height: 1rem;
          content: "";
          background: no-repeat 50% / 50% 50%;
        }

        .custom-checkbox .custom-control-label::before {
          border-radius: 0.25rem;
        }

        .custom-checkbox .custom-control-input:checked ~ .custom-control-label::after {
          background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%23fff' d='M6.564.75l-3.59 3.612-1.538-1.55L0 4.26 2.974 7.25 8 2.193z'/%3e%3c/svg%3e");
        }

        .custom-checkbox .custom-control-input:indeterminate ~ .custom-control-label::before {
          border-color: #007bff;
          background-color: #007bff;
        }

        .custom-checkbox .custom-control-input:indeterminate ~ .custom-control-label::after {
          background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 4'%3e%3cpath stroke='%23fff' d='M0 2h4'/%3e%3c/svg%3e");
        }

        .custom-checkbox .custom-control-input:disabled:checked ~ .custom-control-label::before {
          background-color: rgba(0, 123, 255, 0.5);
        }

        .custom-checkbox .custom-control-input:disabled:indeterminate ~ .custom-control-label::before {
          background-color: rgba(0, 123, 255, 0.5);
        }

        .custom-radio .custom-control-label::before {
          border-radius: 50%;
        }

        .custom-radio .custom-control-input:checked ~ .custom-control-label::after {
          background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='-4 -4 8 8'%3e%3ccircle r='3' fill='%23fff'/%3e%3c/svg%3e");
        }

        .custom-radio .custom-control-input:disabled:checked ~ .custom-control-label::before {
          background-color: rgba(0, 123, 255, 0.5);
        }

        .custom-switch {
          padding-left: 2.25rem;
        }

        .custom-switch .custom-control-label::before {
          left: -2.25rem;
          width: 1.75rem;
          pointer-events: all;
          border-radius: 0.5rem;
        }

        .custom-switch .custom-control-label::after {
          top: calc(0.25rem + 2px);
          left: calc(-2.25rem + 2px);
          width: calc(1rem - 4px);
          height: calc(1rem - 4px);
          background-color: #adb5bd;
          border-radius: 0.5rem;
          transition: transform 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        @media (prefers-reduced-motion: reduce) {
          .custom-switch .custom-control-label::after {
            transition: none;
          }
        }

        .custom-switch .custom-control-input:checked ~ .custom-control-label::after {
          background-color: #fff;
          transform: translateX(0.75rem);
        }

        .custom-switch .custom-control-input:disabled:checked ~ .custom-control-label::before {
          background-color: rgba(0, 123, 255, 0.5);
        }

        .custom-select {
          display: inline-block;
          width: 100%;
          height: calc(1.5em + 0.75rem + 2px);
          padding: 0.375rem 1.75rem 0.375rem 0.75rem;
          font-size: 1rem;
          font-weight: 400;
          line-height: 1.5;
          color: #495057;
          vertical-align: middle;
          background: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3e%3cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3e%3c/svg%3e") no-repeat right 0.75rem center/8px 10px;
          background-color: #fff;
          border: 1px solid #ced4da;
          border-radius: 0.25rem;
          appearance: none;
        }

        .custom-select:focus {
          border-color: #80bdff;
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .custom-select:focus::-ms-value {
          color: #495057;
          background-color: #ffffff;
        }

        .custom-select[multiple], .custom-select[size]:not([size="1"]) {
          height: auto;
          padding-right: 0.75rem;
          background-image: none;
        }

        .custom-select:disabled {
          color: #6c757d;
          background-color: #e9ecef;
        }

        .custom-select::-ms-expand {
          display: none;
        }

        .custom-select-sm {
          height: calc(1.5em + 0.5rem + 2px);
          padding-top: 0.25rem;
          padding-bottom: 0.25rem;
          padding-left: 0.5rem;
          font-size: 0.875rem;
        }

        .custom-select-lg {
          height: calc(1.5em + 1rem + 2px);
          padding-top: 0.5rem;
          padding-bottom: 0.5rem;
          padding-left: 1rem;
          font-size: 1.25rem;
        }

        .custom-file {
          position: relative;
          display: inline-block;
          width: 100%;
          height: calc(1.5em + 0.75rem + 2px);
          margin-bottom: 0;
        }

        .custom-file-input {
          position: relative;
          z-index: 2;
          width: 100%;
          height: calc(1.5em + 0.75rem + 2px);
          margin: 0;
          opacity: 0;
        }

        .custom-file-input:focus ~ .custom-file-label {
          border-color: #80bdff;
          box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .custom-file-input:disabled ~ .custom-file-label {
          background-color: #e9ecef;
        }

        .custom-file-input:lang(en) ~ .custom-file-label::after {
          content: "Browse";
        }

        .custom-file-input ~ .custom-file-label[data-browse]::after {
          content: attr(data-browse);
        }

        .custom-file-label {
          position: absolute;
          top: 0;
          right: 0;
          left: 0;
          z-index: 1;
          height: calc(1.5em + 0.75rem + 2px);
          padding: 0.375rem 0.75rem;
          font-weight: 400;
          line-height: 1.5;
          color: #495057;
          background-color: #fff;
          border: 1px solid #ced4da;
          border-radius: 0.25rem;
        }

        .custom-file-label::after {
          position: absolute;
          top: 0;
          right: 0;
          bottom: 0;
          z-index: 3;
          display: block;
          height: calc(1.5em + 0.75rem);
          padding: 0.375rem 0.75rem;
          line-height: 1.5;
          color: #495057;
          content: "Browse";
          background-color: #e9ecef;
          border-left: inherit;
          border-radius: 0 0.25rem 0.25rem 0;
        }

        .custom-range {
          width: 100%;
          height: calc(1rem + 0.4rem);
          padding: 0;
          background-color: transparent;
          appearance: none;
        }

        .custom-range:focus {
          outline: none;
        }

        .custom-range:focus::-webkit-slider-thumb {
          box-shadow: 0 0 0 1px #fff, 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .custom-range:focus::-moz-range-thumb {
          box-shadow: 0 0 0 1px #fff, 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .custom-range:focus::-ms-thumb {
          box-shadow: 0 0 0 1px #fff, 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .custom-range::-moz-focus-outer {
          border: 0;
        }

        .custom-range::-webkit-slider-thumb {
          width: 1rem;
          height: 1rem;
          margin-top: -0.25rem;
          background-color: #007bff;
          border: 0;
          border-radius: 1rem;
          transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
          appearance: none;
        }

        @media (prefers-reduced-motion: reduce) {
          .custom-range::-webkit-slider-thumb {
            transition: none;
          }
        }

        .custom-range::-webkit-slider-thumb:active {
          background-color: #b3d7ff;
        }

        .custom-range::-webkit-slider-runnable-track {
          width: 100%;
          height: 0.5rem;
          color: transparent;
          cursor: pointer;
          background-color: #dee2e6;
          border-color: transparent;
          border-radius: 1rem;
        }

        .custom-range::-moz-range-thumb {
          width: 1rem;
          height: 1rem;
          background-color: #007bff;
          border: 0;
          border-radius: 1rem;
          transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
          appearance: none;
        }

        @media (prefers-reduced-motion: reduce) {
          .custom-range::-moz-range-thumb {
            transition: none;
          }
        }

        .custom-range::-moz-range-thumb:active {
          background-color: #b3d7ff;
        }

        .custom-range::-moz-range-track {
          width: 100%;
          height: 0.5rem;
          color: transparent;
          cursor: pointer;
          background-color: #dee2e6;
          border-color: transparent;
          border-radius: 1rem;
        }

        .custom-range::-ms-thumb {
          width: 1rem;
          height: 1rem;
          margin-top: 0;
          margin-right: 0.2rem;
          margin-left: 0.2rem;
          background-color: #007bff;
          border: 0;
          border-radius: 1rem;
          transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
          appearance: none;
        }

        @media (prefers-reduced-motion: reduce) {
          .custom-range::-ms-thumb {
            transition: none;
          }
        }

        .custom-range::-ms-thumb:active {
          background-color: #b3d7ff;
        }

        .custom-range::-ms-track {
          width: 100%;
          height: 0.5rem;
          color: transparent;
          cursor: pointer;
          background-color: transparent;
          border-color: transparent;
          border-width: 0.5rem;
        }

        .custom-range::-ms-fill-lower {
          background-color: #dee2e6;
          border-radius: 1rem;
        }

        .custom-range::-ms-fill-upper {
          margin-right: 15px;
          background-color: #dee2e6;
          border-radius: 1rem;
        }

        .custom-range:disabled::-webkit-slider-thumb {
          background-color: #adb5bd;
        }

        .custom-range:disabled::-webkit-slider-runnable-track {
          cursor: default;
        }

        .custom-range:disabled::-moz-range-thumb {
          background-color: #adb5bd;
        }

        .custom-range:disabled::-moz-range-track {
          cursor: default;
        }

        .custom-range:disabled::-ms-thumb {
          background-color: #adb5bd;
        }

        .custom-control-label::before,
        .custom-file-label,
        .custom-select {
          transition: background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        @media (prefers-reduced-motion: reduce) {
          .custom-control-label::before,
          .custom-file-label,
          .custom-select {
            transition: none;
          }
        }

        .nav {
          display: flex;
          flex-wrap: wrap;
          padding-left: 0;
          margin-bottom: 0;
          list-style: none;
        }

        .nav-link {
          display: block;
          padding: 0.5rem 1rem;
        }

        .nav-link:hover, .nav-link:focus {
          text-decoration: none;
        }

        .nav-link.disabled {
          color: #6c757d;
          pointer-events: none;
          cursor: default;
        }

        .nav-tabs {
          border-bottom: 1px solid #ebedf2;
        }

        .nav-tabs .nav-item {
          margin-bottom: -1px;
        }

        .nav-tabs .nav-link {
          border: 1px solid transparent;
          border-top-left-radius: 0.25rem;
          border-top-right-radius: 0.25rem;
        }

        .nav-tabs .nav-link:hover, .nav-tabs .nav-link:focus {
          border-color: #ebedf2 #ebedf2 #ebedf2;
        }

        .nav-tabs .nav-link.disabled {
          color: #6c757d;
          background-color: transparent;
          border-color: transparent;
        }

        .nav-tabs .nav-link.active,
        .nav-tabs .nav-item.show .nav-link {
          color: #343a40;
          background-color: #ffffff;
          border-color: #ebedf2 #ebedf2 #ffffff;
        }

        .nav-tabs .dropdown-menu {
          margin-top: -1px;
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }

        .nav-pills .nav-link {
          border-radius: 0.25rem;
        }

        .nav-pills .nav-link.active,
        .nav-pills .show > .nav-link {
          color: #fff;
          background-color: #007bff;
        }

        .nav-fill .nav-item {
          flex: 1 1 auto;
          text-align: center;
        }

        .nav-justified .nav-item {
          flex-basis: 0;
          flex-grow: 1;
          text-align: center;
        }

        .tab-content > .tab-pane {
          display: none;
        }

        .tab-content > .active {
          display: block;
        }

        .navbar {
          position: relative;
          display: flex;
          flex-wrap: wrap;
          align-items: center;
          padding: 0.5rem 1rem;
        }

        .navbar > .container,
        .navbar > .container-fluid {
          display: flex;
          flex-wrap: wrap;
          align-items: center;
          justify-content: space-between;
        }

        .navbar-brand {
          display: inline-block;
          padding-top: 0.3125rem;
          padding-bottom: 0.3125rem;
          margin-right: 1rem;
          font-size: 1.25rem;
          line-height: inherit;
          white-space: nowrap;
        }

        .navbar-brand:hover, .navbar-brand:focus {
          text-decoration: none;
        }

        .navbar-nav {
          display: flex;
          flex-direction: column;
          padding-left: 0;
          margin-bottom: 0;
          list-style: none;
        }

        .navbar-nav .nav-link {
          padding-right: 0;
          padding-left: 0;
        }

        .navbar-nav .dropdown-menu {
          position: static;
          float: none;
        }

        .navbar-text {
          display: inline-block;
          padding-top: 0.5rem;
          padding-bottom: 0.5rem;
        }

        .navbar-collapse {
          flex-basis: 100%;
          flex-grow: 1;
          align-items: center;
        }

        .navbar-toggler {
          padding: 0.25rem 0.75rem;
          font-size: 1.25rem;
          line-height: 1;
          background-color: transparent;
          border: 1px solid transparent;
          border-radius: 0.25rem;
        }

        .navbar-toggler:hover, .navbar-toggler:focus {
          text-decoration: none;
        }

        .navbar-toggler-icon {
          display: inline-block;
          width: 1.5em;
          height: 1.5em;
          vertical-align: middle;
          content: "";
          background: no-repeat center center;
          background-size: 100% 100%;
        }

        @media (max-width: 575.98px) {
          .navbar-expand-sm > .container,
          .navbar-expand-sm > .container-fluid {
            padding-right: 0;
            padding-left: 0;
          }
        }

        @media (min-width: 576px) {
          .navbar-expand-sm {
            flex-flow: row nowrap;
            justify-content: flex-start;
          }
          .navbar-expand-sm .navbar-nav {
            flex-direction: row;
          }
          .navbar-expand-sm .navbar-nav .dropdown-menu {
            position: absolute;
          }
          .navbar-expand-sm .navbar-nav .nav-link {
            padding-right: 0.5rem;
            padding-left: 0.5rem;
          }
          .navbar-expand-sm > .container,
          .navbar-expand-sm > .container-fluid {
            flex-wrap: nowrap;
          }
          .navbar-expand-sm .navbar-collapse {
            display: flex !important;
            flex-basis: auto;
          }
          .navbar-expand-sm .navbar-toggler {
            display: none;
          }
        }

        @media (max-width: 767.98px) {
          .navbar-expand-md > .container,
          .navbar-expand-md > .container-fluid {
            padding-right: 0;
            padding-left: 0;
          }
        }

        @media (min-width: 768px) {
          .navbar-expand-md {
            flex-flow: row nowrap;
            justify-content: flex-start;
          }
          .navbar-expand-md .navbar-nav {
            flex-direction: row;
          }
          .navbar-expand-md .navbar-nav .dropdown-menu {
            position: absolute;
          }
          .navbar-expand-md .navbar-nav .nav-link {
            padding-right: 0.5rem;
            padding-left: 0.5rem;
          }
          .navbar-expand-md > .container,
          .navbar-expand-md > .container-fluid {
            flex-wrap: nowrap;
          }
          .navbar-expand-md .navbar-collapse {
            display: flex !important;
            flex-basis: auto;
          }
          .navbar-expand-md .navbar-toggler {
            display: none;
          }
        }

        @media (max-width: 991.98px) {
          .navbar-expand-lg > .container,
          .navbar-expand-lg > .container-fluid {
            padding-right: 0;
            padding-left: 0;
          }
        }

        @media (min-width: 992px) {
          .navbar-expand-lg {
            flex-flow: row nowrap;
            justify-content: flex-start;
          }
          .navbar-expand-lg .navbar-nav {
            flex-direction: row;
          }
          .navbar-expand-lg .navbar-nav .dropdown-menu {
            position: absolute;
          }
          .navbar-expand-lg .navbar-nav .nav-link {
            padding-right: 0.5rem;
            padding-left: 0.5rem;
          }
          .navbar-expand-lg > .container,
          .navbar-expand-lg > .container-fluid {
            flex-wrap: nowrap;
          }
          .navbar-expand-lg .navbar-collapse {
            display: flex !important;
            flex-basis: auto;
          }
          .navbar-expand-lg .navbar-toggler {
            display: none;
          }
        }

        @media (max-width: 1199.98px) {
          .navbar-expand-xl > .container,
          .navbar-expand-xl > .container-fluid {
            padding-right: 0;
            padding-left: 0;
          }
        }

        @media (min-width: 1200px) {
          .navbar-expand-xl {
            flex-flow: row nowrap;
            justify-content: flex-start;
          }
          .navbar-expand-xl .navbar-nav {
            flex-direction: row;
          }
          .navbar-expand-xl .navbar-nav .dropdown-menu {
            position: absolute;
          }
          .navbar-expand-xl .navbar-nav .nav-link {
            padding-right: 0.5rem;
            padding-left: 0.5rem;
          }
          .navbar-expand-xl > .container,
          .navbar-expand-xl > .container-fluid {
            flex-wrap: nowrap;
          }
          .navbar-expand-xl .navbar-collapse {
            display: flex !important;
            flex-basis: auto;
          }
          .navbar-expand-xl .navbar-toggler {
            display: none;
          }
        }

        .navbar-expand {
          flex-flow: row nowrap;
          justify-content: flex-start;
        }

        .navbar-expand > .container,
        .navbar-expand > .container-fluid {
          padding-right: 0;
          padding-left: 0;
        }

        .navbar-expand .navbar-nav {
          flex-direction: row;
        }

        .navbar-expand .navbar-nav .dropdown-menu {
          position: absolute;
        }

        .navbar-expand .navbar-nav .nav-link {
          padding-right: 0.5rem;
          padding-left: 0.5rem;
        }

        .navbar-expand > .container,
        .navbar-expand > .container-fluid {
          flex-wrap: nowrap;
        }

        .navbar-expand .navbar-collapse {
          display: flex !important;
          flex-basis: auto;
        }

        .navbar-expand .navbar-toggler {
          display: none;
        }

        .navbar-light .navbar-brand {
          color: rgba(0, 0, 0, 0.9);
        }

        .navbar-light .navbar-brand:hover, .navbar-light .navbar-brand:focus {
          color: rgba(0, 0, 0, 0.9);
        }

        .navbar-light .navbar-nav .nav-link {
          color: rgba(0, 0, 0, 0.5);
        }

        .navbar-light .navbar-nav .nav-link:hover, .navbar-light .navbar-nav .nav-link:focus {
          color: rgba(0, 0, 0, 0.7);
        }

        .navbar-light .navbar-nav .nav-link.disabled {
          color: rgba(0, 0, 0, 0.3);
        }

        .navbar-light .navbar-nav .show > .nav-link,
        .navbar-light .navbar-nav .active > .nav-link,
        .navbar-light .navbar-nav .nav-link.show,
        .navbar-light .navbar-nav .nav-link.active {
          color: rgba(0, 0, 0, 0.9);
        }

        .navbar-light .navbar-toggler {
          color: rgba(0, 0, 0, 0.5);
          border-color: rgba(0, 0, 0, 0.1);
        }

        .navbar-light .navbar-toggler-icon {
          background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(0, 0, 0, 0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        .navbar-light .navbar-text {
          color: rgba(0, 0, 0, 0.5);
        }

        .navbar-light .navbar-text a {
          color: rgba(0, 0, 0, 0.9);
        }

        .navbar-light .navbar-text a:hover, .navbar-light .navbar-text a:focus {
          color: rgba(0, 0, 0, 0.9);
        }

        .navbar-dark .navbar-brand {
          color: #fff;
        }

        .navbar-dark .navbar-brand:hover, .navbar-dark .navbar-brand:focus {
          color: #fff;
        }

        .navbar-dark .navbar-nav .nav-link {
          color: rgba(255, 255, 255, 0.5);
        }

        .navbar-dark .navbar-nav .nav-link:hover, .navbar-dark .navbar-nav .nav-link:focus {
          color: rgba(255, 255, 255, 0.75);
        }

        .navbar-dark .navbar-nav .nav-link.disabled {
          color: rgba(255, 255, 255, 0.25);
        }

        .navbar-dark .navbar-nav .show > .nav-link,
        .navbar-dark .navbar-nav .active > .nav-link,
        .navbar-dark .navbar-nav .nav-link.show,
        .navbar-dark .navbar-nav .nav-link.active {
          color: #fff;
        }

        .navbar-dark .navbar-toggler {
          color: rgba(255, 255, 255, 0.5);
          border-color: rgba(255, 255, 255, 0.1);
        }

        .navbar-dark .navbar-toggler-icon {
          background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(255, 255, 255, 0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        .navbar-dark .navbar-text {
          color: rgba(255, 255, 255, 0.5);
        }

        .navbar-dark .navbar-text a {
          color: #fff;
        }

        .navbar-dark .navbar-text a:hover, .navbar-dark .navbar-text a:focus {
          color: #fff;
        }

        .card {
          position: relative;
          display: flex;
          flex-direction: column;
          min-width: 0;
          word-wrap: break-word;
          background-color: #fff;
          background-clip: border-box;
          border: 1px solid rgba(0, 0, 0, 0.125);
          border-radius: 0.3125rem;
        }

        .card > hr {
          margin-right: 0;
          margin-left: 0;
        }

        .card > .list-group:first-child .list-group-item:first-child {
          border-top-left-radius: 0.3125rem;
          border-top-right-radius: 0.3125rem;
        }

        .card > .list-group:last-child .list-group-item:last-child {
          border-bottom-right-radius: 0.3125rem;
          border-bottom-left-radius: 0.3125rem;
        }

        .card-body {
          flex: 1 1 auto;
          padding: 1.25rem;
        }

        .card-title {
          margin-bottom: 0.75rem;
        }

        .card-subtitle {
          margin-top: -0.375rem;
          margin-bottom: 0;
        }

        .card-text:last-child {
          margin-bottom: 0;
        }

        .card-link:hover {
          text-decoration: none;
        }

        .card-link + .card-link {
          margin-left: 1.25rem;
        }

        .card-header {
          padding: 0.75rem 1.25rem;
          margin-bottom: 0;
          background-color: rgba(0, 0, 0, 0.03);
          border-bottom: 1px solid rgba(0, 0, 0, 0.125);
        }

        .card-header:first-child {
          border-radius: calc(0.25rem - 1px) calc(0.25rem - 1px) 0 0;
        }

        .card-header + .list-group .list-group-item:first-child {
          border-top: 0;
        }

        .card-footer {
          padding: 0.75rem 1.25rem;
          background-color: rgba(0, 0, 0, 0.03);
          border-top: 1px solid rgba(0, 0, 0, 0.125);
        }

        .card-footer:last-child {
          border-radius: 0 0 calc(0.25rem - 1px) calc(0.25rem - 1px);
        }

        .card-header-tabs {
          margin-right: -0.625rem;
          margin-bottom: -0.75rem;
          margin-left: -0.625rem;
          border-bottom: 0;
        }

        .card-header-pills {
          margin-right: -0.625rem;
          margin-left: -0.625rem;
        }

        .card-img-overlay {
          position: absolute;
          top: 0;
          right: 0;
          bottom: 0;
          left: 0;
          padding: 1.25rem;
        }

        .card-img {
          width: 100%;
          border-radius: calc(0.25rem - 1px);
        }

        .card-img-top {
          width: 100%;
          border-top-left-radius: calc(0.25rem - 1px);
          border-top-right-radius: calc(0.25rem - 1px);
        }

        .card-img-bottom {
          width: 100%;
          border-bottom-right-radius: calc(0.25rem - 1px);
          border-bottom-left-radius: calc(0.25rem - 1px);
        }

        .card-deck {
          display: flex;
          flex-direction: column;
        }

        .card-deck .card {
          margin-bottom: 15px;
        }

        @media (min-width: 576px) {
          .card-deck {
            flex-flow: row wrap;
            margin-right: -15px;
            margin-left: -15px;
          }
          .card-deck .card {
            display: flex;
            flex: 1 0 0%;
            flex-direction: column;
            margin-right: 15px;
            margin-bottom: 0;
            margin-left: 15px;
          }
        }

        .card-group {
          display: flex;
          flex-direction: column;
        }

        .card-group > .card {
          margin-bottom: 15px;
        }

        @media (min-width: 576px) {
          .card-group {
            flex-flow: row wrap;
          }
          .card-group > .card {
            flex: 1 0 0%;
            margin-bottom: 0;
          }
          .card-group > .card + .card {
            margin-left: 0;
            border-left: 0;
          }
          .card-group > .card:not(:last-child) {
            border-top-right-radius: 0;
            border-bottom-right-radius: 0;
          }
          .card-group > .card:not(:last-child) .card-img-top,
          .card-group > .card:not(:last-child) .card-header {
            border-top-right-radius: 0;
          }
          .card-group > .card:not(:last-child) .card-img-bottom,
          .card-group > .card:not(:last-child) .card-footer {
            border-bottom-right-radius: 0;
          }
          .card-group > .card:not(:first-child) {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
          }
          .card-group > .card:not(:first-child) .card-img-top,
          .card-group > .card:not(:first-child) .card-header {
            border-top-left-radius: 0;
          }
          .card-group > .card:not(:first-child) .card-img-bottom,
          .card-group > .card:not(:first-child) .card-footer {
            border-bottom-left-radius: 0;
          }
        }

        .card-columns .card {
          margin-bottom: 0.75rem;
        }

        @media (min-width: 576px) {
          .card-columns {
            column-count: 3;
            column-gap: 1.25rem;
            orphans: 1;
            widows: 1;
          }
          .card-columns .card {
            display: inline-block;
            width: 100%;
          }
        }

        .accordion > .card {
          overflow: hidden;
        }

        .accordion > .card:not(:first-of-type) .card-header:first-child {
          border-radius: 0;
        }

        .accordion > .card:not(:first-of-type):not(:last-of-type) {
          border-bottom: 0;
          border-radius: 0;
        }

        .accordion > .card:first-of-type {
          border-bottom: 0;
          border-bottom-right-radius: 0;
          border-bottom-left-radius: 0;
        }

        .accordion > .card:last-of-type {
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }

        .accordion > .card .card-header {
          margin-bottom: -1px;
        }

        .breadcrumb {
          display: flex;
          flex-wrap: wrap;
          padding: 0.56rem 1.13rem;
          margin-bottom: 1rem;
          list-style: none;
          background-color: transparent;
          border-radius: 0.25rem;
        }

        .breadcrumb-item + .breadcrumb-item {
          padding-left: 0.5rem;
        }

        .breadcrumb-item + .breadcrumb-item::before {
          display: inline-block;
          padding-right: 0.5rem;
          color: #6c757d;
          content: "/";
        }

        .breadcrumb-item + .breadcrumb-item:hover::before {
          text-decoration: underline;
        }

        .breadcrumb-item + .breadcrumb-item:hover::before {
          text-decoration: none;
        }

        .breadcrumb-item.active {
          color: #495057;
        }

        .pagination {
          display: flex;
          padding-left: 0;
          list-style: none;
          border-radius: 0.25rem;
        }

        .page-link {
          position: relative;
          display: block;
          padding: 0.5rem 0.75rem;
          margin-left: -1px;
          line-height: 1.25;
          color: #007bff;
          background-color: #fff;
          border: 1px solid #dee2e6;
        }

        .page-link:hover {
          z-index: 2;
          color: #0056b3;
          text-decoration: none;
          background-color: #e9ecef;
          border-color: #dee2e6;
        }

        .page-link:focus {
          z-index: 2;
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .page-item:first-child .page-link {
          margin-left: 0;
          border-top-left-radius: 0.25rem;
          border-bottom-left-radius: 0.25rem;
        }

        .page-item:last-child .page-link {
          border-top-right-radius: 0.25rem;
          border-bottom-right-radius: 0.25rem;
        }

        .page-item.active .page-link {
          z-index: 1;
          color: #fff;
          background-color: #007bff;
          border-color: #007bff;
        }

        .page-item.disabled .page-link {
          color: #6c757d;
          pointer-events: none;
          cursor: auto;
          background-color: #fff;
          border-color: #dee2e6;
        }

        .pagination-lg .page-link {
          padding: 0.75rem 1.5rem;
          font-size: 1.25rem;
          line-height: 1.5;
        }

        .pagination-lg .page-item:first-child .page-link {
          border-top-left-radius: 0.3rem;
          border-bottom-left-radius: 0.3rem;
        }

        .pagination-lg .page-item:last-child .page-link {
          border-top-right-radius: 0.3rem;
          border-bottom-right-radius: 0.3rem;
        }

        .pagination-sm .page-link {
          padding: 0.25rem 0.5rem;
          font-size: 0.875rem;
          line-height: 1.5;
        }

        .pagination-sm .page-item:first-child .page-link {
          border-top-left-radius: 0.2rem;
          border-bottom-left-radius: 0.2rem;
        }

        .pagination-sm .page-item:last-child .page-link {
          border-top-right-radius: 0.2rem;
          border-bottom-right-radius: 0.2rem;
        }

        .badge {
          display: inline-block;
          padding: 0.25em 0.4em;
          font-size: 75%;
          font-weight: 700;
          line-height: 1;
          text-align: center;
          white-space: nowrap;
          vertical-align: baseline;
          border-radius: 0.25rem;
          transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        @media (prefers-reduced-motion: reduce) {
          .badge {
            transition: none;
          }
        }

        a.badge:hover, a.badge:focus {
          text-decoration: none;
        }

        .badge:empty {
          display: none;
        }

        .btn .badge {
          position: relative;
          top: -1px;
        }

        .badge-pill {
          padding-right: 0.6em;
          padding-left: 0.6em;
          border-radius: 10rem;
        }

        .badge-primary {
          color: #fff;
          background-color: #b66dff;
        }

        a.badge-primary:hover, a.badge-primary:focus {
          color: #fff;
          background-color: #9d3aff;
        }

        a.badge-primary:focus, a.badge-primary.focus {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(182, 109, 255, 0.5);
        }

        .badge-secondary {
          color: #212529;
          background-color: #d8d8d8;
        }

        a.badge-secondary:hover, a.badge-secondary:focus {
          color: #212529;
          background-color: #bfbfbf;
        }

        a.badge-secondary:focus, a.badge-secondary.focus {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(216, 216, 216, 0.5);
        }

        .badge-success, .preview-list .preview-item .preview-thumbnail .badge.badge-online {
          color: #212529;
          background-color: #1bcfb4;
        }

        a.badge-success:hover, .preview-list .preview-item .preview-thumbnail a.badge.badge-online:hover, a.badge-success:focus, .preview-list .preview-item .preview-thumbnail a.badge.badge-online:focus {
          color: #212529;
          background-color: #15a28d;
        }

        a.badge-success:focus, .preview-list .preview-item .preview-thumbnail a.badge.badge-online:focus, a.badge-success.focus, .preview-list .preview-item .preview-thumbnail a.focus.badge.badge-online {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(27, 207, 180, 0.5);
        }

        .badge-info, .preview-list .preview-item .preview-thumbnail .badge.badge-offline {
          color: #fff;
          background-color: #198ae3;
        }

        a.badge-info:hover, .preview-list .preview-item .preview-thumbnail a.badge.badge-offline:hover, a.badge-info:focus, .preview-list .preview-item .preview-thumbnail a.badge.badge-offline:focus {
          color: #fff;
          background-color: #146eb5;
        }

        a.badge-info:focus, .preview-list .preview-item .preview-thumbnail a.badge.badge-offline:focus, a.badge-info.focus, .preview-list .preview-item .preview-thumbnail a.focus.badge.badge-offline {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(25, 138, 227, 0.5);
        }

        .badge-warning, .preview-list .preview-item .preview-thumbnail .badge.badge-busy {
          color: #212529;
          background-color: #fed713;
        }

        a.badge-warning:hover, .preview-list .preview-item .preview-thumbnail a.badge.badge-busy:hover, a.badge-warning:focus, .preview-list .preview-item .preview-thumbnail a.badge.badge-busy:focus {
          color: #212529;
          background-color: #ddb901;
        }

        a.badge-warning:focus, .preview-list .preview-item .preview-thumbnail a.badge.badge-busy:focus, a.badge-warning.focus, .preview-list .preview-item .preview-thumbnail a.focus.badge.badge-busy {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(254, 215, 19, 0.5);
        }

        .badge-danger {
          color: #212529;
          background-color: #fe7c96;
        }

        a.badge-danger:hover, a.badge-danger:focus {
          color: #212529;
          background-color: #fe496d;
        }

        a.badge-danger:focus, a.badge-danger.focus {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(254, 124, 150, 0.5);
        }

        .badge-light {
          color: #212529;
          background-color: #f8f9fa;
        }

        a.badge-light:hover, a.badge-light:focus {
          color: #212529;
          background-color: #dae0e5;
        }

        a.badge-light:focus, a.badge-light.focus {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(248, 249, 250, 0.5);
        }

        .badge-dark {
          color: #fff;
          background-color: #3e4b5b;
        }

        a.badge-dark:hover, a.badge-dark:focus {
          color: #fff;
          background-color: #29323d;
        }

        a.badge-dark:focus, a.badge-dark.focus {
          outline: 0;
          box-shadow: 0 0 0 0.2rem rgba(62, 75, 91, 0.5);
        }

        .jumbotron {
          padding: 2rem 1rem;
          margin-bottom: 2rem;
          background-color: #e9ecef;
          border-radius: 0.3rem;
        }

        @media (min-width: 576px) {
          .jumbotron {
            padding: 4rem 2rem;
          }
        }

        .jumbotron-fluid {
          padding-right: 0;
          padding-left: 0;
          border-radius: 0;
        }

        .alert {
          position: relative;
          padding: 0.75rem 1.25rem;
          margin-bottom: 1rem;
          border: 1px solid transparent;
          border-radius: 0.25rem;
        }

        .alert-heading {
          color: inherit;
        }

        .alert-link {
          font-weight: 700;
        }

        .alert-dismissible {
          padding-right: 4rem;
        }

        .alert-dismissible .close {
          position: absolute;
          top: 0;
          right: 0;
          padding: 0.75rem 1.25rem;
          color: inherit;
        }

        .alert-primary {
          color: #5f3985;
          background-color: #f0e2ff;
          border-color: #ebd6ff;
        }

        .alert-primary hr {
          border-top-color: #dfbdff;
        }

        .alert-primary .alert-link {
          color: #462a61;
        }

        .alert-secondary {
          color: #707070;
          background-color: #f7f7f7;
          border-color: #f4f4f4;
        }

        .alert-secondary hr {
          border-top-color: #e7e7e7;
        }

        .alert-secondary .alert-link {
          color: #575757;
        }

        .alert-success {
          color: #0e6c5e;
          background-color: #d1f5f0;
          border-color: #bff2ea;
        }

        .alert-success hr {
          border-top-color: #aaeee3;
        }

        .alert-success .alert-link {
          color: #083f37;
        }

        .alert-info {
          color: #0d4876;
          background-color: #d1e8f9;
          border-color: #bfdef7;
        }

        .alert-info hr {
          border-top-color: #a8d2f4;
        }

        .alert-info .alert-link {
          color: #082c48;
        }

        .alert-warning {
          color: #84700a;
          background-color: #fff7d0;
          border-color: #fff4bd;
        }

        .alert-warning hr {
          border-top-color: #fff0a4;
        }

        .alert-warning .alert-link {
          color: #554806;
        }

        .alert-danger {
          color: #84404e;
          background-color: #ffe5ea;
          border-color: #ffdae2;
        }

        .alert-danger hr {
          border-top-color: #ffc1ce;
        }

        .alert-danger .alert-link {
          color: #622f3a;
        }

        .alert-light {
          color: #818182;
          background-color: #fefefe;
          border-color: #fdfdfe;
        }

        .alert-light hr {
          border-top-color: #ececf6;
        }

        .alert-light .alert-link {
          color: #686868;
        }

        .alert-dark {
          color: #20272f;
          background-color: #d8dbde;
          border-color: #c9cdd1;
        }

        .alert-dark hr {
          border-top-color: #bbc0c5;
        }

        .alert-dark .alert-link {
          color: #0b0e11;
        }

        @keyframes progress-bar-stripes {
          from {
            background-position: 1rem 0;
          }
          to {
            background-position: 0 0;
          }
        }

        .progress {
          display: flex;
          height: 1rem;
          overflow: hidden;
          font-size: 0.75rem;
          background-color: #f96868;
          border-radius: 0.25rem;
        }

        .progress-bar {
          display: flex;
          flex-direction: column;
          justify-content: center;
          color: #fff;
          text-align: center;
          white-space: nowrap;
          background-color: #007bff;
          transition: width 0.6s ease;
        }

        @media (prefers-reduced-motion: reduce) {
          .progress-bar {
            transition: none;
          }
        }

        .progress-bar-striped {
          background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
          background-size: 1rem 1rem;
        }

        .progress-bar-animated {
          animation: progress-bar-stripes 1s linear infinite;
        }

        @media (prefers-reduced-motion: reduce) {
          .progress-bar-animated {
            animation: none;
          }
        }

        .media {
          display: flex;
          align-items: flex-start;
        }

        .media-body {
          flex: 1;
        }

        .list-group {
          display: flex;
          flex-direction: column;
          padding-left: 0;
          margin-bottom: 0;
        }

        .list-group-item-action {
          width: 100%;
          color: #495057;
          text-align: inherit;
        }

        .list-group-item-action:hover, .list-group-item-action:focus {
          z-index: 1;
          color: #495057;
          text-decoration: none;
          background-color: #f8f9fa;
        }

        .list-group-item-action:active {
          color: #212529;
          background-color: #e9ecef;
        }

        .list-group-item {
          position: relative;
          display: block;
          padding: 0.75rem 1.25rem;
          margin-bottom: -1px;
          background-color: #fff;
          border: 1px solid rgba(0, 0, 0, 0.125);
        }

        .list-group-item:first-child {
          border-top-left-radius: 0.25rem;
          border-top-right-radius: 0.25rem;
        }

        .list-group-item:last-child {
          margin-bottom: 0;
          border-bottom-right-radius: 0.25rem;
          border-bottom-left-radius: 0.25rem;
        }

        .list-group-item.disabled, .list-group-item:disabled {
          color: #6c757d;
          pointer-events: none;
          background-color: #fff;
        }

        .list-group-item.active {
          z-index: 2;
          color: #fff;
          background-color: #007bff;
          border-color: #007bff;
        }

        .list-group-horizontal {
          flex-direction: row;
        }

        .list-group-horizontal .list-group-item {
          margin-right: -1px;
          margin-bottom: 0;
        }

        .list-group-horizontal .list-group-item:first-child {
          border-top-left-radius: 0.25rem;
          border-bottom-left-radius: 0.25rem;
          border-top-right-radius: 0;
        }

        .list-group-horizontal .list-group-item:last-child {
          margin-right: 0;
          border-top-right-radius: 0.25rem;
          border-bottom-right-radius: 0.25rem;
          border-bottom-left-radius: 0;
        }

        @media (min-width: 576px) {
          .list-group-horizontal-sm {
            flex-direction: row;
          }
          .list-group-horizontal-sm .list-group-item {
            margin-right: -1px;
            margin-bottom: 0;
          }
          .list-group-horizontal-sm .list-group-item:first-child {
            border-top-left-radius: 0.25rem;
            border-bottom-left-radius: 0.25rem;
            border-top-right-radius: 0;
          }
          .list-group-horizontal-sm .list-group-item:last-child {
            margin-right: 0;
            border-top-right-radius: 0.25rem;
            border-bottom-right-radius: 0.25rem;
            border-bottom-left-radius: 0;
          }
        }

        @media (min-width: 768px) {
          .list-group-horizontal-md {
            flex-direction: row;
          }
          .list-group-horizontal-md .list-group-item {
            margin-right: -1px;
            margin-bottom: 0;
          }
          .list-group-horizontal-md .list-group-item:first-child {
            border-top-left-radius: 0.25rem;
            border-bottom-left-radius: 0.25rem;
            border-top-right-radius: 0;
          }
          .list-group-horizontal-md .list-group-item:last-child {
            margin-right: 0;
            border-top-right-radius: 0.25rem;
            border-bottom-right-radius: 0.25rem;
            border-bottom-left-radius: 0;
          }
        }

        @media (min-width: 992px) {
          .list-group-horizontal-lg {
            flex-direction: row;
          }
          .list-group-horizontal-lg .list-group-item {
            margin-right: -1px;
            margin-bottom: 0;
          }
          .list-group-horizontal-lg .list-group-item:first-child {
            border-top-left-radius: 0.25rem;
            border-bottom-left-radius: 0.25rem;
            border-top-right-radius: 0;
          }
          .list-group-horizontal-lg .list-group-item:last-child {
            margin-right: 0;
            border-top-right-radius: 0.25rem;
            border-bottom-right-radius: 0.25rem;
            border-bottom-left-radius: 0;
          }
        }

        @media (min-width: 1200px) {
          .list-group-horizontal-xl {
            flex-direction: row;
          }
          .list-group-horizontal-xl .list-group-item {
            margin-right: -1px;
            margin-bottom: 0;
          }
          .list-group-horizontal-xl .list-group-item:first-child {
            border-top-left-radius: 0.25rem;
            border-bottom-left-radius: 0.25rem;
            border-top-right-radius: 0;
          }
          .list-group-horizontal-xl .list-group-item:last-child {
            margin-right: 0;
            border-top-right-radius: 0.25rem;
            border-bottom-right-radius: 0.25rem;
            border-bottom-left-radius: 0;
          }
        }

        .list-group-flush .list-group-item {
          border-right: 0;
          border-left: 0;
          border-radius: 0;
        }

        .list-group-flush .list-group-item:last-child {
          margin-bottom: -1px;
        }

        .list-group-flush:first-child .list-group-item:first-child {
          border-top: 0;
        }

        .list-group-flush:last-child .list-group-item:last-child {
          margin-bottom: 0;
          border-bottom: 0;
        }

        .list-group-item-primary {
          color: #5f3985;
          background-color: #ebd6ff;
        }

        .list-group-item-primary.list-group-item-action:hover, .list-group-item-primary.list-group-item-action:focus {
          color: #5f3985;
          background-color: #dfbdff;
        }

        .list-group-item-primary.list-group-item-action.active {
          color: #ffffff;
          background-color: #5f3985;
          border-color: #5f3985;
        }

        .list-group-item-secondary {
          color: #707070;
          background-color: #f4f4f4;
        }

        .list-group-item-secondary.list-group-item-action:hover, .list-group-item-secondary.list-group-item-action:focus {
          color: #707070;
          background-color: #e7e7e7;
        }

        .list-group-item-secondary.list-group-item-action.active {
          color: #ffffff;
          background-color: #707070;
          border-color: #707070;
        }

        .list-group-item-success {
          color: #0e6c5e;
          background-color: #bff2ea;
        }

        .list-group-item-success.list-group-item-action:hover, .list-group-item-success.list-group-item-action:focus {
          color: #0e6c5e;
          background-color: #aaeee3;
        }

        .list-group-item-success.list-group-item-action.active {
          color: #ffffff;
          background-color: #0e6c5e;
          border-color: #0e6c5e;
        }

        .list-group-item-info {
          color: #0d4876;
          background-color: #bfdef7;
        }

        .list-group-item-info.list-group-item-action:hover, .list-group-item-info.list-group-item-action:focus {
          color: #0d4876;
          background-color: #a8d2f4;
        }

        .list-group-item-info.list-group-item-action.active {
          color: #ffffff;
          background-color: #0d4876;
          border-color: #0d4876;
        }

        .list-group-item-warning {
          color: #84700a;
          background-color: #fff4bd;
        }

        .list-group-item-warning.list-group-item-action:hover, .list-group-item-warning.list-group-item-action:focus {
          color: #84700a;
          background-color: #fff0a4;
        }

        .list-group-item-warning.list-group-item-action.active {
          color: #ffffff;
          background-color: #84700a;
          border-color: #84700a;
        }

        .list-group-item-danger {
          color: #84404e;
          background-color: #ffdae2;
        }

        .list-group-item-danger.list-group-item-action:hover, .list-group-item-danger.list-group-item-action:focus {
          color: #84404e;
          background-color: #ffc1ce;
        }

        .list-group-item-danger.list-group-item-action.active {
          color: #ffffff;
          background-color: #84404e;
          border-color: #84404e;
        }

        .list-group-item-light {
          color: #818182;
          background-color: #fdfdfe;
        }

        .list-group-item-light.list-group-item-action:hover, .list-group-item-light.list-group-item-action:focus {
          color: #818182;
          background-color: #ececf6;
        }

        .list-group-item-light.list-group-item-action.active {
          color: #ffffff;
          background-color: #818182;
          border-color: #818182;
        }

        .list-group-item-dark {
          color: #20272f;
          background-color: #c9cdd1;
        }

        .list-group-item-dark.list-group-item-action:hover, .list-group-item-dark.list-group-item-action:focus {
          color: #20272f;
          background-color: #bbc0c5;
        }

        .list-group-item-dark.list-group-item-action.active {
          color: #ffffff;
          background-color: #20272f;
          border-color: #20272f;
        }

        .close {
          float: right;
          font-size: 1.5rem;
          font-weight: 700;
          line-height: 1;
          color: #000;
          text-shadow: 0 1px 0 #fff;
          opacity: .5;
        }

        .close:hover {
          color: #000;
          text-decoration: none;
        }

        .close:not(:disabled):not(.disabled):hover, .close:not(:disabled):not(.disabled):focus {
          opacity: .75;
        }

        button.close {
          padding: 0;
          background-color: transparent;
          border: 0;
          appearance: none;
        }

        a.close.disabled {
          pointer-events: none;
        }

        .toast {
          max-width: 350px;
          overflow: hidden;
          font-size: 0.875rem;
          background-color: rgba(255, 255, 255, 0.85);
          background-clip: padding-box;
          border: 1px solid rgba(0, 0, 0, 0.1);
          box-shadow: 0 0.25rem 0.75rem rgba(0, 0, 0, 0.1);
          backdrop-filter: blur(10px);
          opacity: 0;
          border-radius: 0.25rem;
        }

        .toast:not(:last-child) {
          margin-bottom: 0.75rem;
        }

        .toast.showing {
          opacity: 1;
        }

        .toast.show {
          display: block;
          opacity: 1;
        }

        .toast.hide {
          display: none;
        }

        .toast-header {
          display: flex;
          align-items: center;
          padding: 0.25rem 0.75rem;
          color: #6c757d;
          background-color: rgba(255, 255, 255, 0.85);
          background-clip: padding-box;
          border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        }

        .toast-body {
          padding: 0.75rem;
        }

        .modal-open {
          overflow: hidden;
        }

        .modal-open .modal {
          overflow-x: hidden;
          overflow-y: auto;
        }

        .modal {
          position: fixed;
          top: 0;
          left: 0;
          z-index: 1050;
          display: none;
          width: 100%;
          height: 100%;
          overflow: hidden;
          outline: 0;
        }

        .modal-dialog {
          position: relative;
          width: auto;
          margin: 10px;
          pointer-events: none;
        }

        .modal.fade .modal-dialog {
          transition: transform 0.4s ease;
          transform: translate(0, -50px);
        }

        @media (prefers-reduced-motion: reduce) {
          .modal.fade .modal-dialog {
            transition: none;
          }
        }

        .modal.show .modal-dialog {
          transform: none;
        }

        .modal-dialog-scrollable {
          display: flex;
          max-height: calc(100% - 20px);
        }

        .modal-dialog-scrollable .modal-content {
          max-height: calc(100vh - 20px);
          overflow: hidden;
        }

        .modal-dialog-scrollable .modal-header,
        .modal-dialog-scrollable .modal-footer {
          flex-shrink: 0;
        }

        .modal-dialog-scrollable .modal-body {
          overflow-y: auto;
        }

        .modal-dialog-centered {
          display: flex;
          align-items: center;
          min-height: calc(100% - 20px);
        }

        .modal-dialog-centered::before {
          display: block;
          height: calc(100vh - 20px);
          content: "";
        }

        .modal-dialog-centered.modal-dialog-scrollable {
          flex-direction: column;
          justify-content: center;
          height: 100%;
        }

        .modal-dialog-centered.modal-dialog-scrollable .modal-content {
          max-height: none;
        }

        .modal-dialog-centered.modal-dialog-scrollable::before {
          content: none;
        }

        .modal-content {
          position: relative;
          display: flex;
          flex-direction: column;
          width: 100%;
          pointer-events: auto;
          background-color: #f2edf3;
          background-clip: padding-box;
          border: 1px solid #ebedf2;
          border-radius: 0.3rem;
          outline: 0;
        }

        .modal-backdrop {
          position: fixed;
          top: 0;
          left: 0;
          z-index: 1040;
          width: 100vw;
          height: 100vh;
          background-color: #000;
        }

        .modal-backdrop.fade {
          opacity: 0;
        }

        .modal-backdrop.show {
          opacity: 0.5;
        }

        .modal-header {
          display: flex;
          align-items: flex-start;
          justify-content: space-between;
          padding: 1rem 1rem;
          border-bottom: 1px solid #ebedf2;
          border-top-left-radius: 0.3rem;
          border-top-right-radius: 0.3rem;
        }

        .modal-header .close {
          padding: 1rem 1rem;
          margin: -25px -26px -25px auto;
        }

        .modal-title {
          margin-bottom: 0;
          line-height: 1.5;
        }

        .modal-body {
          position: relative;
          flex: 1 1 auto;
          padding: 15px;
        }

        .modal-footer {
          display: flex;
          align-items: center;
          justify-content: flex-end;
          padding: 15px;
          border-top: 1px solid #ebedf2;
          border-bottom-right-radius: 0.3rem;
          border-bottom-left-radius: 0.3rem;
        }

        .modal-footer > :not(:first-child) {
          margin-left: .25rem;
        }

        .modal-footer > :not(:last-child) {
          margin-right: .25rem;
        }

        .modal-scrollbar-measure {
          position: absolute;
          top: -9999px;
          width: 50px;
          height: 50px;
          overflow: scroll;
        }

        @media (min-width: 576px) {
          .modal-dialog {
            max-width: 500px;
            margin: 30px auto;
          }
          .modal-dialog-scrollable {
            max-height: calc(100% - 60px);
          }
          .modal-dialog-scrollable .modal-content {
            max-height: calc(100vh - 60px);
          }
          .modal-dialog-centered {
            min-height: calc(100% - 60px);
          }
          .modal-dialog-centered::before {
            height: calc(100vh - 60px);
          }
          .modal-sm {
            max-width: 300px;
          }
        }

        @media (min-width: 992px) {
          .modal-lg,
          .modal-xl {
            max-width: 90%;
          }
        }

        @media (min-width: 1200px) {
          .modal-xl {
            max-width: 1140px;
          }
        }

        .tooltip {
          position: absolute;
          z-index: 1070;
          display: block;
          margin: 0;
          font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
          font-style: normal;
          font-weight: 400;
          line-height: 1.5;
          text-align: left;
          text-align: start;
          text-decoration: none;
          text-shadow: none;
          text-transform: none;
          letter-spacing: normal;
          word-break: normal;
          word-spacing: normal;
          white-space: normal;
          line-break: auto;
          font-size: 0.75rem;
          word-wrap: break-word;
          opacity: 0;
        }

        .tooltip.show {
          opacity: 0.9;
        }

        .tooltip .arrow {
          position: absolute;
          display: block;
          width: 0.8rem;
          height: 0.4rem;
        }

        .tooltip .arrow::before {
          position: absolute;
          content: "";
          border-color: transparent;
          border-style: solid;
        }

        .bs-tooltip-top, .bs-tooltip-auto[x-placement^="top"] {
          padding: 0.4rem 0;
        }

        .bs-tooltip-top .arrow, .bs-tooltip-auto[x-placement^="top"] .arrow {
          bottom: 0;
        }

        .bs-tooltip-top .arrow::before, .bs-tooltip-auto[x-placement^="top"] .arrow::before {
          top: 0;
          border-width: 0.4rem 0.4rem 0;
          border-top-color: #000;
        }

        .bs-tooltip-right, .bs-tooltip-auto[x-placement^="right"] {
          padding: 0 0.4rem;
        }

        .bs-tooltip-right .arrow, .bs-tooltip-auto[x-placement^="right"] .arrow {
          left: 0;
          width: 0.4rem;
          height: 0.8rem;
        }

        .bs-tooltip-right .arrow::before, .bs-tooltip-auto[x-placement^="right"] .arrow::before {
          right: 0;
          border-width: 0.4rem 0.4rem 0.4rem 0;
          border-right-color: #000;
        }

        .bs-tooltip-bottom, .bs-tooltip-auto[x-placement^="bottom"] {
          padding: 0.4rem 0;
        }

        .bs-tooltip-bottom .arrow, .bs-tooltip-auto[x-placement^="bottom"] .arrow {
          top: 0;
        }

        .bs-tooltip-bottom .arrow::before, .bs-tooltip-auto[x-placement^="bottom"] .arrow::before {
          bottom: 0;
          border-width: 0 0.4rem 0.4rem;
          border-bottom-color: #000;
        }

        .bs-tooltip-left, .bs-tooltip-auto[x-placement^="left"] {
          padding: 0 0.4rem;
        }

        .bs-tooltip-left .arrow, .bs-tooltip-auto[x-placement^="left"] .arrow {
          right: 0;
          width: 0.4rem;
          height: 0.8rem;
        }

        .bs-tooltip-left .arrow::before, .bs-tooltip-auto[x-placement^="left"] .arrow::before {
          left: 0;
          border-width: 0.4rem 0 0.4rem 0.4rem;
          border-left-color: #000;
        }

        .tooltip-inner {
          max-width: 200px;
          padding: 0.4rem 0.75rem;
          color: #fff;
          text-align: center;
          background-color: #000;
          border-radius: 0.375rem;
        }

        .popover {
          position: absolute;
          top: 0;
          left: 0;
          z-index: 1060;
          display: block;
          max-width: 276px;
          font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
          font-style: normal;
          font-weight: 400;
          line-height: 1.5;
          text-align: left;
          text-align: start;
          text-decoration: none;
          text-shadow: none;
          text-transform: none;
          letter-spacing: normal;
          word-break: normal;
          word-spacing: normal;
          white-space: normal;
          line-break: auto;
          font-size: 0.875rem;
          word-wrap: break-word;
          background-color: #fff;
          background-clip: padding-box;
          border: 1px solid rgba(0, 0, 0, 0.2);
          border-radius: 0.3rem;
        }

        .popover .arrow {
          position: absolute;
          display: block;
          width: 1rem;
          height: 0.5rem;
          margin: 0 0.3rem;
        }

        .popover .arrow::before, .popover .arrow::after {
          position: absolute;
          display: block;
          content: "";
          border-color: transparent;
          border-style: solid;
        }

        .bs-popover-top, .bs-popover-auto[x-placement^="top"] {
          margin-bottom: 0.5rem;
        }

        .bs-popover-top > .arrow, .bs-popover-auto[x-placement^="top"] > .arrow {
          bottom: calc((0.5rem + 1px) * -1);
        }

        .bs-popover-top > .arrow::before, .bs-popover-auto[x-placement^="top"] > .arrow::before {
          bottom: 0;
          border-width: 0.5rem 0.5rem 0;
          border-top-color: rgba(0, 0, 0, 0.25);
        }

        .bs-popover-top > .arrow::after, .bs-popover-auto[x-placement^="top"] > .arrow::after {
          bottom: 1px;
          border-width: 0.5rem 0.5rem 0;
          border-top-color: #fff;
        }

        .bs-popover-right, .bs-popover-auto[x-placement^="right"] {
          margin-left: 0.5rem;
        }

        .bs-popover-right > .arrow, .bs-popover-auto[x-placement^="right"] > .arrow {
          left: calc((0.5rem + 1px) * -1);
          width: 0.5rem;
          height: 1rem;
          margin: 0.3rem 0;
        }

        .bs-popover-right > .arrow::before, .bs-popover-auto[x-placement^="right"] > .arrow::before {
          left: 0;
          border-width: 0.5rem 0.5rem 0.5rem 0;
          border-right-color: rgba(0, 0, 0, 0.25);
        }

        .bs-popover-right > .arrow::after, .bs-popover-auto[x-placement^="right"] > .arrow::after {
          left: 1px;
          border-width: 0.5rem 0.5rem 0.5rem 0;
          border-right-color: #fff;
        }

        .bs-popover-bottom, .bs-popover-auto[x-placement^="bottom"] {
          margin-top: 0.5rem;
        }

        .bs-popover-bottom > .arrow, .bs-popover-auto[x-placement^="bottom"] > .arrow {
          top: calc((0.5rem + 1px) * -1);
        }

        .bs-popover-bottom > .arrow::before, .bs-popover-auto[x-placement^="bottom"] > .arrow::before {
          top: 0;
          border-width: 0 0.5rem 0.5rem 0.5rem;
          border-bottom-color: rgba(0, 0, 0, 0.25);
        }

        .bs-popover-bottom > .arrow::after, .bs-popover-auto[x-placement^="bottom"] > .arrow::after {
          top: 1px;
          border-width: 0 0.5rem 0.5rem 0.5rem;
          border-bottom-color: #fff;
        }

        .bs-popover-bottom .popover-header::before, .bs-popover-auto[x-placement^="bottom"] .popover-header::before {
          position: absolute;
          top: 0;
          left: 50%;
          display: block;
          width: 1rem;
          margin-left: -0.5rem;
          content: "";
          border-bottom: 1px solid #f7f7f7;
        }

        .bs-popover-left, .bs-popover-auto[x-placement^="left"] {
          margin-right: 0.5rem;
        }

        .bs-popover-left > .arrow, .bs-popover-auto[x-placement^="left"] > .arrow {
          right: calc((0.5rem + 1px) * -1);
          width: 0.5rem;
          height: 1rem;
          margin: 0.3rem 0;
        }

        .bs-popover-left > .arrow::before, .bs-popover-auto[x-placement^="left"] > .arrow::before {
          right: 0;
          border-width: 0.5rem 0 0.5rem 0.5rem;
          border-left-color: rgba(0, 0, 0, 0.25);
        }

        .bs-popover-left > .arrow::after, .bs-popover-auto[x-placement^="left"] > .arrow::after {
          right: 1px;
          border-width: 0.5rem 0 0.5rem 0.5rem;
          border-left-color: #fff;
        }

        .popover-header {
          padding: 0.5rem 0.75rem;
          margin-bottom: 0;
          font-size: 1rem;
          background-color: #f7f7f7;
          border-bottom: 1px solid #ebebeb;
          border-top-left-radius: calc(0.3rem - 1px);
          border-top-right-radius: calc(0.3rem - 1px);
        }

        .popover-header:empty {
          display: none;
        }

        .popover-body {
          padding: 0.5rem 0.75rem;
          color: #212529;
        }

        .carousel {
          position: relative;
        }

        .carousel.pointer-event {
          touch-action: pan-y;
        }

        .carousel-inner {
          position: relative;
          width: 100%;
          overflow: hidden;
        }

        .carousel-inner::after {
          display: block;
          clear: both;
          content: "";
        }

        .carousel-item {
          position: relative;
          display: none;
          float: left;
          width: 100%;
          margin-right: -100%;
          backface-visibility: hidden;
          transition: transform 0.6s ease-in-out;
        }

        @media (prefers-reduced-motion: reduce) {
          .carousel-item {
            transition: none;
          }
        }

        .carousel-item.active,
        .carousel-item-next,
        .carousel-item-prev {
          display: block;
        }

        .carousel-item-next:not(.carousel-item-left),
        .active.carousel-item-right {
          transform: translateX(100%);
        }

        .carousel-item-prev:not(.carousel-item-right),
        .active.carousel-item-left {
          transform: translateX(-100%);
        }

        .carousel-fade .carousel-item {
          opacity: 0;
          transition-property: opacity;
          transform: none;
        }

        .carousel-fade .carousel-item.active,
        .carousel-fade .carousel-item-next.carousel-item-left,
        .carousel-fade .carousel-item-prev.carousel-item-right {
          z-index: 1;
          opacity: 1;
        }

        .carousel-fade .active.carousel-item-left,
        .carousel-fade .active.carousel-item-right {
          z-index: 0;
          opacity: 0;
          transition: 0s 0.6s opacity;
        }

        @media (prefers-reduced-motion: reduce) {
          .carousel-fade .active.carousel-item-left,
          .carousel-fade .active.carousel-item-right {
            transition: none;
          }
        }

        .carousel-control-prev,
        .carousel-control-next {
          position: absolute;
          top: 0;
          bottom: 0;
          z-index: 1;
          display: flex;
          align-items: center;
          justify-content: center;
          width: 15%;
          color: #fff;
          text-align: center;
          opacity: 0.5;
          transition: opacity 0.15s ease;
        }

        @media (prefers-reduced-motion: reduce) {
          .carousel-control-prev,
          .carousel-control-next {
            transition: none;
          }
        }

        .carousel-control-prev:hover, .carousel-control-prev:focus,
        .carousel-control-next:hover,
        .carousel-control-next:focus {
          color: #fff;
          text-decoration: none;
          outline: 0;
          opacity: 0.9;
        }

        .carousel-control-prev {
          left: 0;
        }

        .carousel-control-next {
          right: 0;
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
          display: inline-block;
          width: 20px;
          height: 20px;
          background: no-repeat 50% / 100% 100%;
        }

        .carousel-control-prev-icon {
          background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3e%3cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3e%3c/svg%3e");
        }

        .carousel-control-next-icon {
          background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3e%3cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3e%3c/svg%3e");
        }

        .carousel-indicators {
          position: absolute;
          right: 0;
          bottom: 0;
          left: 0;
          z-index: 15;
          display: flex;
          justify-content: center;
          padding-left: 0;
          margin-right: 15%;
          margin-left: 15%;
          list-style: none;
        }

        .carousel-indicators li {
          box-sizing: content-box;
          flex: 0 1 auto;
          width: 30px;
          height: 3px;
          margin-right: 3px;
          margin-left: 3px;
          text-indent: -999px;
          cursor: pointer;
          background-color: #fff;
          background-clip: padding-box;
          border-top: 10px solid transparent;
          border-bottom: 10px solid transparent;
          opacity: .5;
          transition: opacity 0.6s ease;
        }

        @media (prefers-reduced-motion: reduce) {
          .carousel-indicators li {
            transition: none;
          }
        }

        .cursor-pointer {
            cursor: pointer;
        }

        .cursor-pointer:hover {
            background: #d6eaf8 !important;
        }

        .cursor-pointer-icon {
            cursor: pointer;
            transform: scale(1.5);
        }

        .cursor-pointer-icon:hover {
            transform: scale(2.5);
        }

        .color-black:hover{
           color: black;
        }

        .carousel-indicators .active {
          opacity: 1;
        }

        .carousel-caption {
          position: absolute;
          right: 15%;
          bottom: 20px;
          left: 15%;
          z-index: 10;
          padding-top: 20px;
          padding-bottom: 20px;
          color: #fff;
          text-align: center;
        }

        @keyframes spinner-border {
          to {
            transform: rotate(360deg);
          }
        }

        .spinner-border {
          display: inline-block;
          width: 2rem;
          height: 2rem;
          vertical-align: text-bottom;
          border: 0.25em solid currentColor;
          border-right-color: transparent;
          border-radius: 50%;
          animation: spinner-border .75s linear infinite;
        }

        .spinner-border-sm {
          width: 1rem;
          height: 1rem;
          border-width: 0.2em;
        }

        @keyframes spinner-grow {
          0% {
            transform: scale(0);
          }
          50% {
            opacity: 1;
          }
        }

        .spinner-grow {
          display: inline-block;
          width: 2rem;
          height: 2rem;
          vertical-align: text-bottom;
          background-color: currentColor;
          border-radius: 50%;
          opacity: 0;
          animation: spinner-grow .75s linear infinite;
        }

        .spinner-grow-sm {
          width: 1rem;
          height: 1rem;
        }

        .align-baseline {
          vertical-align: baseline !important;
        }

        .align-top {
          vertical-align: top !important;
        }

        .align-middle {
          vertical-align: middle !important;
        }

        .align-bottom {
          vertical-align: bottom !important;
        }

        .align-text-bottom {
          vertical-align: text-bottom !important;
        }

        .align-text-top {
          vertical-align: text-top !important;
        }

        .bg-primary {
          background-color: #b66dff !important;
        }

        a.bg-primary:hover, a.bg-primary:focus,
        button.bg-primary:hover,
        button.bg-primary:focus {
          background-color: #9d3aff !important;
        }

        .bg-secondary {
          background-color: #d8d8d8 !important;
        }

        a.bg-secondary:hover, a.bg-secondary:focus,
        button.bg-secondary:hover,
        button.bg-secondary:focus {
          background-color: #bfbfbf !important;
        }

        .bg-success {
          background-color: #1bcfb4 !important;
        }

        a.bg-success:hover, a.bg-success:focus,
        button.bg-success:hover,
        button.bg-success:focus {
          background-color: #15a28d !important;
        }

        .bg-info {
          background-color: #198ae3 !important;
        }

        a.bg-info:hover, a.bg-info:focus,
        button.bg-info:hover,
        button.bg-info:focus {
          background-color: #146eb5 !important;
        }

        .bg-warning {
          background-color: #fed713 !important;
        }

        a.bg-warning:hover, a.bg-warning:focus,
        button.bg-warning:hover,
        button.bg-warning:focus {
          background-color: #ddb901 !important;
        }

        .bg-danger {
          background-color: #fe7c96 !important;
        }

        a.bg-danger:hover, a.bg-danger:focus,
        button.bg-danger:hover,
        button.bg-danger:focus {
          background-color: #fe496d !important;
        }

        .bg-light {
          background-color: #f8f9fa !important;
        }

        a.bg-light:hover, a.bg-light:focus,
        button.bg-light:hover,
        button.bg-light:focus {
          background-color: #dae0e5 !important;
        }

        .bg-dark {
          background-color: #3e4b5b !important;
        }

        a.bg-dark:hover, a.bg-dark:focus,
        button.bg-dark:hover,
        button.bg-dark:focus {
          background-color: #29323d !important;
        }

        .bg-white {
          background-color: #ffffff !important;
        }

        .bg-transparent {
          background-color: transparent !important;
        }

        .border {
          border: 1px solid #ebedf2 !important;
        }

        .border-top {
          border-top: 1px solid #ebedf2 !important;
        }

        .border-right {
          border-right: 1px solid #ebedf2 !important;
        }

        .border-bottom {
          border-bottom: 1px solid #ebedf2 !important;
        }

        .border-left {
          border-left: 1px solid #ebedf2 !important;
        }

        .border-0 {
          border: 0 !important;
        }

        .border-top-0 {
          border-top: 0 !important;
        }

        .border-right-0 {
          border-right: 0 !important;
        }

        .border-bottom-0 {
          border-bottom: 0 !important;
        }

        .border-left-0 {
          border-left: 0 !important;
        }

        .border-primary {
          border-color: #b66dff !important;
        }

        .border-secondary {
          border-color: #d8d8d8 !important;
        }

        .border-success {
          border-color: #1bcfb4 !important;
        }

        .border-info {
          border-color: #198ae3 !important;
        }

        .border-warning {
          border-color: #fed713 !important;
        }

        .border-danger {
          border-color: #fe7c96 !important;
        }

        .border-light {
          border-color: #f8f9fa !important;
        }

        .border-dark {
          border-color: #3e4b5b !important;
        }

        .border-white {
          border-color: #ffffff !important;
        }

        .rounded-sm {
          border-radius: 0.2rem !important;
        }

        .rounded {
          border-radius: 0.25rem !important;
        }

        .rounded-top {
          border-top-left-radius: 0.25rem !important;
          border-top-right-radius: 0.25rem !important;
        }

        .rounded-right {
          border-top-right-radius: 0.25rem !important;
          border-bottom-right-radius: 0.25rem !important;
        }

        .rounded-bottom {
          border-bottom-right-radius: 0.25rem !important;
          border-bottom-left-radius: 0.25rem !important;
        }

        .rounded-left {
          border-top-left-radius: 0.25rem !important;
          border-bottom-left-radius: 0.25rem !important;
        }

        .rounded-lg {
          border-radius: 0.3rem !important;
        }

        .rounded-circle {
          border-radius: 50% !important;
        }

        .rounded-pill {
          border-radius: 50rem !important;
        }

        .rounded-0 {
          border-radius: 0 !important;
        }

        .clearfix::after {
          display: block;
          clear: both;
          content: "";
        }

        .d-none {
          display: none !important;
        }

        .d-inline {
          display: inline !important;
        }

        .d-inline-block {
          display: inline-block !important;
        }

        .d-block {
          display: block !important;
        }

        .d-table {
          display: table !important;
        }

        .d-table-row {
          display: table-row !important;
        }

        .d-table-cell {
          display: table-cell !important;
        }

        .d-flex, .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item, .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link, .navbar.horizontal-boxed-layout-navbar .navbar-top, .navbar.horizontal-full-width-layout-navbar .navbar-top, .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav .nav-item, .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav .nav-item .nav-link, .navbar.horizontal-full-width-layout-navbar .navbar-bottom, .navbar.horizontal-full-width-layout-navbar .navbar-bottom .page-title-wrapper, .page-header {
          display: flex !important;
        }

        .d-inline-flex {
          display: inline-flex !important;
        }

        @media (min-width: 576px) {
          .d-sm-none {
            display: none !important;
          }
          .d-sm-inline {
            display: inline !important;
          }
          .d-sm-inline-block {
            display: inline-block !important;
          }
          .d-sm-block {
            display: block !important;
          }
          .d-sm-table {
            display: table !important;
          }
          .d-sm-table-row {
            display: table-row !important;
          }
          .d-sm-table-cell {
            display: table-cell !important;
          }
          .d-sm-flex {
            display: flex !important;
          }
          .d-sm-inline-flex {
            display: inline-flex !important;
          }
        }

        @media (min-width: 768px) {
          .d-md-none {
            display: none !important;
          }
          .d-md-inline {
            display: inline !important;
          }
          .d-md-inline-block {
            display: inline-block !important;
          }
          .d-md-block {
            display: block !important;
          }
          .d-md-table {
            display: table !important;
          }
          .d-md-table-row {
            display: table-row !important;
          }
          .d-md-table-cell {
            display: table-cell !important;
          }
          .d-md-flex {
            display: flex !important;
          }
          .d-md-inline-flex {
            display: inline-flex !important;
          }
        }

        @media (min-width: 992px) {
          .d-lg-none {
            display: none !important;
          }
          .d-lg-inline {
            display: inline !important;
          }
          .d-lg-inline-block {
            display: inline-block !important;
          }
          .d-lg-block {
            display: block !important;
          }
          .d-lg-table {
            display: table !important;
          }
          .d-lg-table-row {
            display: table-row !important;
          }
          .d-lg-table-cell {
            display: table-cell !important;
          }
          .d-lg-flex {
            display: flex !important;
          }
          .d-lg-inline-flex {
            display: inline-flex !important;
          }
        }

        @media (min-width: 1200px) {
          .d-xl-none {
            display: none !important;
          }
          .d-xl-inline {
            display: inline !important;
          }
          .d-xl-inline-block {
            display: inline-block !important;
          }
          .d-xl-block {
            display: block !important;
          }
          .d-xl-table {
            display: table !important;
          }
          .d-xl-table-row {
            display: table-row !important;
          }
          .d-xl-table-cell {
            display: table-cell !important;
          }
          .d-xl-flex {
            display: flex !important;
          }
          .d-xl-inline-flex {
            display: inline-flex !important;
          }
        }

        @media print {
          .d-print-none {
            display: none !important;
          }
          .d-print-inline {
            display: inline !important;
          }
          .d-print-inline-block {
            display: inline-block !important;
          }
          .d-print-block {
            display: block !important;
          }
          .d-print-table {
            display: table !important;
          }
          .d-print-table-row {
            display: table-row !important;
          }
          .d-print-table-cell {
            display: table-cell !important;
          }
          .d-print-flex {
            display: flex !important;
          }
          .d-print-inline-flex {
            display: inline-flex !important;
          }
        }

        .embed-responsive {
          position: relative;
          display: block;
          width: 100%;
          padding: 0;
          overflow: hidden;
        }

        .embed-responsive::before {
          display: block;
          content: "";
        }

        .embed-responsive .embed-responsive-item,
        .embed-responsive iframe,
        .embed-responsive embed,
        .embed-responsive object,
        .embed-responsive video {
          position: absolute;
          top: 0;
          bottom: 0;
          left: 0;
          width: 100%;
          height: 100%;
          border: 0;
        }

        .embed-responsive-21by9::before {
          padding-top: 42.85714%;
        }

        .embed-responsive-16by9::before {
          padding-top: 56.25%;
        }

        .embed-responsive-4by3::before {
          padding-top: 75%;
        }

        .embed-responsive-1by1::before {
          padding-top: 100%;
        }

        .embed-responsive-21by9::before {
          padding-top: 42.85714%;
        }

        .embed-responsive-16by9::before {
          padding-top: 56.25%;
        }

        .embed-responsive-4by3::before {
          padding-top: 75%;
        }

        .embed-responsive-1by1::before {
          padding-top: 100%;
        }

        .flex-row, .navbar.horizontal-boxed-layout-navbar .navbar-top, .navbar.horizontal-boxed-layout-navbar .navbar-bottom .navbar-nav, .navbar.horizontal-full-width-layout-navbar .navbar-top, .navbar.horizontal-full-width-layout-navbar .navbar-bottom, .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav {
          flex-direction: row !important;
        }

        .flex-column, .navbar.horizontal-boxed-layout-navbar, .navbar.horizontal-full-width-layout-navbar {
          flex-direction: column !important;
        }

        .flex-row-reverse {
          flex-direction: row-reverse !important;
        }

        .flex-column-reverse {
          flex-direction: column-reverse !important;
        }

        .flex-wrap {
          flex-wrap: wrap !important;
        }

        .flex-nowrap {
          flex-wrap: nowrap !important;
        }

        .flex-wrap-reverse {
          flex-wrap: wrap-reverse !important;
        }

        .flex-fill {
          flex: 1 1 auto !important;
        }

        .flex-grow-0 {
          flex-grow: 0 !important;
        }

        .flex-grow-1 {
          flex-grow: 1 !important;
        }

        .flex-shrink-0 {
          flex-shrink: 0 !important;
        }

        .flex-shrink-1 {
          flex-shrink: 1 !important;
        }

        .justify-content-start {
          justify-content: flex-start !important;
        }

        .justify-content-end {
          justify-content: flex-end !important;
        }

        .justify-content-center {
          justify-content: center !important;
        }

        .justify-content-between, .navbar.horizontal-boxed-layout-navbar .navbar-top, .page-header {
          justify-content: space-between !important;
        }

        .justify-content-around {
          justify-content: space-around !important;
        }

        .align-items-start {
          align-items: flex-start !important;
        }

        .align-items-end, .navbar.horizontal-boxed-layout-navbar .navbar-middle .nav-pills {
          align-items: flex-end !important;
        }

        .align-items-center, .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item, .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav .nav-item .nav-link, .navbar.horizontal-full-width-layout-navbar .navbar-bottom .page-title-wrapper, .page-header {
          align-items: center !important;
        }

        .align-items-baseline {
          align-items: baseline !important;
        }

        .align-items-stretch, .navbar.horizontal-boxed-layout-navbar, .navbar.horizontal-full-width-layout-navbar, .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav .nav-item, .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav.navbar-nav-left {
          align-items: stretch !important;
        }

        .align-content-start {
          align-content: flex-start !important;
        }

        .align-content-end {
          align-content: flex-end !important;
        }

        .align-content-center {
          align-content: center !important;
        }

        .align-content-between {
          align-content: space-between !important;
        }

        .align-content-around {
          align-content: space-around !important;
        }

        .align-content-stretch {
          align-content: stretch !important;
        }

        .align-self-auto {
          align-self: auto !important;
        }

        .align-self-start {
          align-self: flex-start !important;
        }

        .align-self-end {
          align-self: flex-end !important;
        }

        .align-self-center {
          align-self: center !important;
        }

        .align-self-baseline {
          align-self: baseline !important;
        }

        .align-self-stretch, .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav.navbar-nav-right .nav-item.nav-profile {
          align-self: stretch !important;
        }

        @media (min-width: 576px) {
          .flex-sm-row {
            flex-direction: row !important;
          }
          .flex-sm-column {
            flex-direction: column !important;
          }
          .flex-sm-row-reverse {
            flex-direction: row-reverse !important;
          }
          .flex-sm-column-reverse {
            flex-direction: column-reverse !important;
          }
          .flex-sm-wrap {
            flex-wrap: wrap !important;
          }
          .flex-sm-nowrap {
            flex-wrap: nowrap !important;
          }
          .flex-sm-wrap-reverse {
            flex-wrap: wrap-reverse !important;
          }
          .flex-sm-fill {
            flex: 1 1 auto !important;
          }
          .flex-sm-grow-0 {
            flex-grow: 0 !important;
          }
          .flex-sm-grow-1 {
            flex-grow: 1 !important;
          }
          .flex-sm-shrink-0 {
            flex-shrink: 0 !important;
          }
          .flex-sm-shrink-1 {
            flex-shrink: 1 !important;
          }
          .justify-content-sm-start {
            justify-content: flex-start !important;
          }
          .justify-content-sm-end {
            justify-content: flex-end !important;
          }
          .justify-content-sm-center {
            justify-content: center !important;
          }
          .justify-content-sm-between {
            justify-content: space-between !important;
          }
          .justify-content-sm-around {
            justify-content: space-around !important;
          }
          .align-items-sm-start {
            align-items: flex-start !important;
          }
          .align-items-sm-end {
            align-items: flex-end !important;
          }
          .align-items-sm-center {
            align-items: center !important;
          }
          .align-items-sm-baseline {
            align-items: baseline !important;
          }
          .align-items-sm-stretch {
            align-items: stretch !important;
          }
          .align-content-sm-start {
            align-content: flex-start !important;
          }
          .align-content-sm-end {
            align-content: flex-end !important;
          }
          .align-content-sm-center {
            align-content: center !important;
          }
          .align-content-sm-between {
            align-content: space-between !important;
          }
          .align-content-sm-around {
            align-content: space-around !important;
          }
          .align-content-sm-stretch {
            align-content: stretch !important;
          }
          .align-self-sm-auto {
            align-self: auto !important;
          }
          .align-self-sm-start {
            align-self: flex-start !important;
          }
          .align-self-sm-end {
            align-self: flex-end !important;
          }
          .align-self-sm-center {
            align-self: center !important;
          }
          .align-self-sm-baseline {
            align-self: baseline !important;
          }
          .align-self-sm-stretch {
            align-self: stretch !important;
          }
        }

        @media (min-width: 768px) {
          .flex-md-row {
            flex-direction: row !important;
          }
          .flex-md-column {
            flex-direction: column !important;
          }
          .flex-md-row-reverse {
            flex-direction: row-reverse !important;
          }
          .flex-md-column-reverse {
            flex-direction: column-reverse !important;
          }
          .flex-md-wrap {
            flex-wrap: wrap !important;
          }
          .flex-md-nowrap {
            flex-wrap: nowrap !important;
          }
          .flex-md-wrap-reverse {
            flex-wrap: wrap-reverse !important;
          }
          .flex-md-fill {
            flex: 1 1 auto !important;
          }
          .flex-md-grow-0 {
            flex-grow: 0 !important;
          }
          .flex-md-grow-1 {
            flex-grow: 1 !important;
          }
          .flex-md-shrink-0 {
            flex-shrink: 0 !important;
          }
          .flex-md-shrink-1 {
            flex-shrink: 1 !important;
          }
          .justify-content-md-start {
            justify-content: flex-start !important;
          }
          .justify-content-md-end {
            justify-content: flex-end !important;
          }
          .justify-content-md-center {
            justify-content: center !important;
          }
          .justify-content-md-between {
            justify-content: space-between !important;
          }
          .justify-content-md-around {
            justify-content: space-around !important;
          }
          .align-items-md-start {
            align-items: flex-start !important;
          }
          .align-items-md-end {
            align-items: flex-end !important;
          }
          .align-items-md-center {
            align-items: center !important;
          }
          .align-items-md-baseline {
            align-items: baseline !important;
          }
          .align-items-md-stretch {
            align-items: stretch !important;
          }
          .align-content-md-start {
            align-content: flex-start !important;
          }
          .align-content-md-end {
            align-content: flex-end !important;
          }
          .align-content-md-center {
            align-content: center !important;
          }
          .align-content-md-between {
            align-content: space-between !important;
          }
          .align-content-md-around {
            align-content: space-around !important;
          }
          .align-content-md-stretch {
            align-content: stretch !important;
          }
          .align-self-md-auto {
            align-self: auto !important;
          }
          .align-self-md-start {
            align-self: flex-start !important;
          }
          .align-self-md-end {
            align-self: flex-end !important;
          }
          .align-self-md-center {
            align-self: center !important;
          }
          .align-self-md-baseline {
            align-self: baseline !important;
          }
          .align-self-md-stretch {
            align-self: stretch !important;
          }
        }

        @media (min-width: 992px) {
          .flex-lg-row {
            flex-direction: row !important;
          }
          .flex-lg-column {
            flex-direction: column !important;
          }
          .flex-lg-row-reverse {
            flex-direction: row-reverse !important;
          }
          .flex-lg-column-reverse {
            flex-direction: column-reverse !important;
          }
          .flex-lg-wrap {
            flex-wrap: wrap !important;
          }
          .flex-lg-nowrap {
            flex-wrap: nowrap !important;
          }
          .flex-lg-wrap-reverse {
            flex-wrap: wrap-reverse !important;
          }
          .flex-lg-fill {
            flex: 1 1 auto !important;
          }
          .flex-lg-grow-0 {
            flex-grow: 0 !important;
          }
          .flex-lg-grow-1 {
            flex-grow: 1 !important;
          }
          .flex-lg-shrink-0 {
            flex-shrink: 0 !important;
          }
          .flex-lg-shrink-1 {
            flex-shrink: 1 !important;
          }
          .justify-content-lg-start {
            justify-content: flex-start !important;
          }
          .justify-content-lg-end {
            justify-content: flex-end !important;
          }
          .justify-content-lg-center {
            justify-content: center !important;
          }
          .justify-content-lg-between {
            justify-content: space-between !important;
          }
          .justify-content-lg-around {
            justify-content: space-around !important;
          }
          .align-items-lg-start {
            align-items: flex-start !important;
          }
          .align-items-lg-end {
            align-items: flex-end !important;
          }
          .align-items-lg-center {
            align-items: center !important;
          }
          .align-items-lg-baseline {
            align-items: baseline !important;
          }
          .align-items-lg-stretch {
            align-items: stretch !important;
          }
          .align-content-lg-start {
            align-content: flex-start !important;
          }
          .align-content-lg-end {
            align-content: flex-end !important;
          }
          .align-content-lg-center {
            align-content: center !important;
          }
          .align-content-lg-between {
            align-content: space-between !important;
          }
          .align-content-lg-around {
            align-content: space-around !important;
          }
          .align-content-lg-stretch {
            align-content: stretch !important;
          }
          .align-self-lg-auto {
            align-self: auto !important;
          }
          .align-self-lg-start {
            align-self: flex-start !important;
          }
          .align-self-lg-end {
            align-self: flex-end !important;
          }
          .align-self-lg-center {
            align-self: center !important;
          }
          .align-self-lg-baseline {
            align-self: baseline !important;
          }
          .align-self-lg-stretch {
            align-self: stretch !important;
          }
        }

        @media (min-width: 1200px) {
          .flex-xl-row {
            flex-direction: row !important;
          }
          .flex-xl-column {
            flex-direction: column !important;
          }
          .flex-xl-row-reverse {
            flex-direction: row-reverse !important;
          }
          .flex-xl-column-reverse {
            flex-direction: column-reverse !important;
          }
          .flex-xl-wrap {
            flex-wrap: wrap !important;
          }
          .flex-xl-nowrap {
            flex-wrap: nowrap !important;
          }
          .flex-xl-wrap-reverse {
            flex-wrap: wrap-reverse !important;
          }
          .flex-xl-fill {
            flex: 1 1 auto !important;
          }
          .flex-xl-grow-0 {
            flex-grow: 0 !important;
          }
          .flex-xl-grow-1 {
            flex-grow: 1 !important;
          }
          .flex-xl-shrink-0 {
            flex-shrink: 0 !important;
          }
          .flex-xl-shrink-1 {
            flex-shrink: 1 !important;
          }
          .justify-content-xl-start {
            justify-content: flex-start !important;
          }
          .justify-content-xl-end {
            justify-content: flex-end !important;
          }
          .justify-content-xl-center {
            justify-content: center !important;
          }
          .justify-content-xl-between {
            justify-content: space-between !important;
          }
          .justify-content-xl-around {
            justify-content: space-around !important;
          }
          .align-items-xl-start {
            align-items: flex-start !important;
          }
          .align-items-xl-end {
            align-items: flex-end !important;
          }
          .align-items-xl-center {
            align-items: center !important;
          }
          .align-items-xl-baseline {
            align-items: baseline !important;
          }
          .align-items-xl-stretch {
            align-items: stretch !important;
          }
          .align-content-xl-start {
            align-content: flex-start !important;
          }
          .align-content-xl-end {
            align-content: flex-end !important;
          }
          .align-content-xl-center {
            align-content: center !important;
          }
          .align-content-xl-between {
            align-content: space-between !important;
          }
          .align-content-xl-around {
            align-content: space-around !important;
          }
          .align-content-xl-stretch {
            align-content: stretch !important;
          }
          .align-self-xl-auto {
            align-self: auto !important;
          }
          .align-self-xl-start {
            align-self: flex-start !important;
          }
          .align-self-xl-end {
            align-self: flex-end !important;
          }
          .align-self-xl-center {
            align-self: center !important;
          }
          .align-self-xl-baseline {
            align-self: baseline !important;
          }
          .align-self-xl-stretch {
            align-self: stretch !important;
          }
        }

        .float-left {
          float: left !important;
        }

        .float-right {
          float: right !important;
        }

        .float-none {
          float: none !important;
        }

        @media (min-width: 576px) {
          .float-sm-left {
            float: left !important;
          }
          .float-sm-right {
            float: right !important;
          }
          .float-sm-none {
            float: none !important;
          }
        }

        @media (min-width: 768px) {
          .float-md-left {
            float: left !important;
          }
          .float-md-right {
            float: right !important;
          }
          .float-md-none {
            float: none !important;
          }
        }

        @media (min-width: 992px) {
          .float-lg-left {
            float: left !important;
          }
          .float-lg-right {
            float: right !important;
          }
          .float-lg-none {
            float: none !important;
          }
        }

        @media (min-width: 1200px) {
          .float-xl-left {
            float: left !important;
          }
          .float-xl-right {
            float: right !important;
          }
          .float-xl-none {
            float: none !important;
          }
        }

        .overflow-auto {
          overflow: auto !important;
        }

        .overflow-hidden {
          overflow: hidden !important;
        }

        .position-static {
          position: static !important;
        }

        .position-relative {
          position: relative !important;
        }

        .position-absolute {
          position: absolute !important;
        }

        .position-fixed {
          position: fixed !important;
        }

        .position-sticky {
          position: sticky !important;
        }

        .fixed-top {
          position: fixed;
          top: 0;
          right: 0;
          left: 0;
          z-index: 1030;
        }

        .fixed-bottom {
          position: fixed;
          right: 0;
          bottom: 0;
          left: 0;
          z-index: 1030;
        }

        @supports (position: sticky) {
          .sticky-top {
            position: sticky;
            top: 0;
            z-index: 1020;
          }
        }

        .sr-only {
          position: absolute;
          width: 1px;
          height: 1px;
          padding: 0;
          overflow: hidden;
          clip: rect(0, 0, 0, 0);
          white-space: nowrap;
          border: 0;
        }

        .sr-only-focusable:active, .sr-only-focusable:focus {
          position: static;
          width: auto;
          height: auto;
          overflow: visible;
          clip: auto;
          white-space: normal;
        }

        .shadow-sm {
          box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075) !important;
        }

        .shadow {
          box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15) !important;
        }

        .shadow-lg {
          box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;
        }

        .shadow-none {
          box-shadow: none !important;
        }

        .w-25 {
          width: 25% !important;
        }

        .w-50 {
          width: 50% !important;
        }

        .w-75 {
          width: 75% !important;
        }

        .w-100 {
          width: 100% !important;
        }

        .w-auto {
          width: auto !important;
        }

        .h-25 {
          height: 25% !important;
        }

        .h-50 {
          height: 50% !important;
        }

        .h-75 {
          height: 75% !important;
        }

        .h-100 {
          height: 100% !important;
        }

        .h-auto {
          height: auto !important;
        }

        .mw-100 {
          max-width: 100% !important;
        }

        .mh-100 {
          max-height: 100% !important;
        }

        .min-vw-100 {
          min-width: 100vw !important;
        }

        .min-vh-100 {
          min-height: 100vh !important;
        }

        .vw-100 {
          width: 100vw !important;
        }

        .vh-100 {
          height: 100vh !important;
        }

        .stretched-link::after {
          position: absolute;
          top: 0;
          right: 0;
          bottom: 0;
          left: 0;
          z-index: 1;
          pointer-events: auto;
          content: "";
          background-color: transparent;
        }

        .m-0 {
          margin: 0 !important;
        }

        .mt-0,
        .my-0 {
          margin-top: 0 !important;
        }

        .mr-0, .rtl .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item i,
        .mx-0 {
          margin-right: 0 !important;
        }

        .mb-0,
        .my-0 {
          margin-bottom: 0 !important;
        }

        .ml-0, .rtl .navbar.default-layout-navbar .navbar-menu-wrapper .search-field, .rtl .preview-list .preview-item .preview-thumbnail .preview-icon i,
        .mx-0 {
          margin-left: 0 !important;
        }

        .m-1 {
          margin: 0.25rem !important;
        }

        .mt-1,
        .my-1 {
          margin-top: 0.25rem !important;
        }

        .mr-1,
        .mx-1 {
          margin-right: 0.25rem !important;
        }

        .mb-1,
        .my-1 {
          margin-bottom: 0.25rem !important;
        }

        .ml-1,
        .mx-1 {
          margin-left: 0.25rem !important;
        }

        .m-2 {
          margin: 0.5rem !important;
        }

        .mt-2, .template-demo > .btn-group,
        .template-demo > .btn-group-vertical,
        .my-2 {
          margin-top: 0.5rem !important;
        }

        .mr-2, .template-demo > .btn-group,
        .template-demo > .btn-group-vertical, .template-demo > .dropdown,
        .mx-2 {
          margin-right: 0.5rem !important;
        }

        .mb-2,
        .my-2 {
          margin-bottom: 0.5rem !important;
        }

        .ml-2, .btn-toolbar .btn-group + .btn-group,
        .mx-2 {
          margin-left: 0.5rem !important;
        }

        .m-3 {
          margin: 1rem !important;
        }

        .mt-3, .template-demo > .btn, .template-demo > .btn-toolbar,
        .my-3 {
          margin-top: 1rem !important;
        }

        .mr-3, .template-demo > .btn, .template-demo > .btn-toolbar,
        .mx-3 {
          margin-right: 1rem !important;
        }

        .mb-3,
        .my-3 {
          margin-bottom: 1rem !important;
        }

        .ml-3,
        .mx-3 {
          margin-left: 1rem !important;
        }

        .m-4 {
          margin: 1.5rem !important;
        }

        .mt-4,
        .my-4 {
          margin-top: 1.5rem !important;
        }

        .mr-4, .rtl .navbar.default-layout-navbar .navbar-menu-wrapper .search-field,
        .mx-4 {
          margin-right: 1.5rem !important;
        }

        .mb-4,
        .my-4 {
          margin-bottom: 1.5rem !important;
        }

        .ml-4,
        .mx-4 {
          margin-left: 1.5rem !important;
        }

        .m-5 {
          margin: 3rem !important;
        }

        .mt-5,
        .my-5 {
          margin-top: 3rem !important;
        }

        .mr-5,
        .mx-5 {
          margin-right: 3rem !important;
        }

        .mb-5,
        .my-5 {
          margin-bottom: 3rem !important;
        }

        .ml-5,
        .mx-5 {
          margin-left: 3rem !important;
        }

        .p-0 {
          padding: 0 !important;
        }

        .pt-0,
        .py-0 {
          padding-top: 0 !important;
        }

        .pr-0,
        .px-0 {
          padding-right: 0 !important;
        }

        .pb-0,
        .py-0 {
          padding-bottom: 0 !important;
        }

        .pl-0,
        .px-0 {
          padding-left: 0 !important;
        }

        .p-1 {
          padding: 0.25rem !important;
        }

        .pt-1,
        .py-1 {
          padding-top: 0.25rem !important;
        }

        .pr-1,
        .px-1 {
          padding-right: 0.25rem !important;
        }

        .pb-1,
        .py-1 {
          padding-bottom: 0.25rem !important;
        }

        .pl-1,
        .px-1 {
          padding-left: 0.25rem !important;
        }

        .p-2 {
          padding: 0.5rem !important;
        }

        .pt-2,
        .py-2 {
          padding-top: 0.5rem !important;
        }

        .pr-2,
        .px-2 {
          padding-right: 0.5rem !important;
        }

        .pb-2,
        .py-2 {
          padding-bottom: 0.5rem !important;
        }

        .pl-2,
        .px-2 {
          padding-left: 0.5rem !important;
        }

        .p-3 {
          padding: 1rem !important;
        }

        .pt-3,
        .py-3 {
          padding-top: 1rem !important;
        }

        .pr-3,
        .px-3 {
          padding-right: 1rem !important;
        }

        .pb-3,
        .py-3 {
          padding-bottom: 1rem !important;
        }

        .pl-3,
        .px-3 {
          padding-left: 1rem !important;
        }

        .p-4 {
          padding: 1.5rem !important;
        }

        .pt-4,
        .py-4 {
          padding-top: 1.5rem !important;
        }

        .pr-4,
        .px-4 {
          padding-right: 1.5rem !important;
        }

        .pb-4,
        .py-4 {
          padding-bottom: 1.5rem !important;
        }

        .pl-4,
        .px-4 {
          padding-left: 1.5rem !important;
        }

        .p-5 {
          padding: 3rem !important;
        }

        .pt-5,
        .py-5 {
          padding-top: 3rem !important;
        }

        .pr-5,
        .px-5 {
          padding-right: 3rem !important;
        }

        .pb-5,
        .py-5 {
          padding-bottom: 3rem !important;
        }

        .pl-5,
        .px-5 {
          padding-left: 3rem !important;
        }

        .m-n1 {
          margin: -0.25rem !important;
        }

        .mt-n1,
        .my-n1 {
          margin-top: -0.25rem !important;
        }

        .mr-n1,
        .mx-n1 {
          margin-right: -0.25rem !important;
        }

        .mb-n1,
        .my-n1 {
          margin-bottom: -0.25rem !important;
        }

        .ml-n1,
        .mx-n1 {
          margin-left: -0.25rem !important;
        }

        .m-n2 {
          margin: -0.5rem !important;
        }

        .mt-n2,
        .my-n2 {
          margin-top: -0.5rem !important;
        }

        .mr-n2,
        .mx-n2 {
          margin-right: -0.5rem !important;
        }

        .mb-n2,
        .my-n2 {
          margin-bottom: -0.5rem !important;
        }

        .ml-n2,
        .mx-n2 {
          margin-left: -0.5rem !important;
        }

        .m-n3 {
          margin: -1rem !important;
        }

        .mt-n3,
        .my-n3 {
          margin-top: -1rem !important;
        }

        .mr-n3,
        .mx-n3 {
          margin-right: -1rem !important;
        }

        .mb-n3,
        .my-n3 {
          margin-bottom: -1rem !important;
        }

        .ml-n3,
        .mx-n3 {
          margin-left: -1rem !important;
        }

        .m-n4 {
          margin: -1.5rem !important;
        }

        .mt-n4,
        .my-n4 {
          margin-top: -1.5rem !important;
        }

        .mr-n4,
        .mx-n4 {
          margin-right: -1.5rem !important;
        }

        .mb-n4,
        .my-n4 {
          margin-bottom: -1.5rem !important;
        }

        .ml-n4,
        .mx-n4 {
          margin-left: -1.5rem !important;
        }

        .m-n5 {
          margin: -3rem !important;
        }

        .mt-n5,
        .my-n5 {
          margin-top: -3rem !important;
        }

        .mr-n5,
        .mx-n5 {
          margin-right: -3rem !important;
        }

        .mb-n5,
        .my-n5 {
          margin-bottom: -3rem !important;
        }

        .ml-n5,
        .mx-n5 {
          margin-left: -3rem !important;
        }

        .m-auto {
          margin: auto !important;
        }

        .mt-auto,
        .my-auto {
          margin-top: auto !important;
        }

        .mr-auto,
        .mx-auto {
          margin-right: auto !important;
        }

        .mb-auto,
        .my-auto {
          margin-bottom: auto !important;
        }

        .ml-auto,
        .mx-auto {
          margin-left: auto !important;
        }

        @media (min-width: 576px) {
          .m-sm-0 {
            margin: 0 !important;
          }
          .mt-sm-0,
          .my-sm-0 {
            margin-top: 0 !important;
          }
          .mr-sm-0,
          .mx-sm-0 {
            margin-right: 0 !important;
          }
          .mb-sm-0,
          .my-sm-0 {
            margin-bottom: 0 !important;
          }
          .ml-sm-0,
          .mx-sm-0 {
            margin-left: 0 !important;
          }
          .m-sm-1 {
            margin: 0.25rem !important;
          }
          .mt-sm-1,
          .my-sm-1 {
            margin-top: 0.25rem !important;
          }
          .mr-sm-1,
          .mx-sm-1 {
            margin-right: 0.25rem !important;
          }
          .mb-sm-1,
          .my-sm-1 {
            margin-bottom: 0.25rem !important;
          }
          .ml-sm-1,
          .mx-sm-1 {
            margin-left: 0.25rem !important;
          }
          .m-sm-2 {
            margin: 0.5rem !important;
          }
          .mt-sm-2,
          .my-sm-2 {
            margin-top: 0.5rem !important;
          }
          .mr-sm-2,
          .mx-sm-2 {
            margin-right: 0.5rem !important;
          }
          .mb-sm-2,
          .my-sm-2 {
            margin-bottom: 0.5rem !important;
          }
          .ml-sm-2,
          .mx-sm-2 {
            margin-left: 0.5rem !important;
          }
          .m-sm-3 {
            margin: 1rem !important;
          }
          .mt-sm-3,
          .my-sm-3 {
            margin-top: 1rem !important;
          }
          .mr-sm-3,
          .mx-sm-3 {
            margin-right: 1rem !important;
          }
          .mb-sm-3,
          .my-sm-3 {
            margin-bottom: 1rem !important;
          }
          .ml-sm-3,
          .mx-sm-3 {
            margin-left: 1rem !important;
          }
          .m-sm-4 {
            margin: 1.5rem !important;
          }
          .mt-sm-4,
          .my-sm-4 {
            margin-top: 1.5rem !important;
          }
          .mr-sm-4,
          .mx-sm-4 {
            margin-right: 1.5rem !important;
          }
          .mb-sm-4,
          .my-sm-4 {
            margin-bottom: 1.5rem !important;
          }
          .ml-sm-4,
          .mx-sm-4 {
            margin-left: 1.5rem !important;
          }
          .m-sm-5 {
            margin: 3rem !important;
          }
          .mt-sm-5,
          .my-sm-5 {
            margin-top: 3rem !important;
          }
          .mr-sm-5,
          .mx-sm-5 {
            margin-right: 3rem !important;
          }
          .mb-sm-5,
          .my-sm-5 {
            margin-bottom: 3rem !important;
          }
          .ml-sm-5,
          .mx-sm-5 {
            margin-left: 3rem !important;
          }
          .p-sm-0 {
            padding: 0 !important;
          }
          .pt-sm-0,
          .py-sm-0 {
            padding-top: 0 !important;
          }
          .pr-sm-0,
          .px-sm-0 {
            padding-right: 0 !important;
          }
          .pb-sm-0,
          .py-sm-0 {
            padding-bottom: 0 !important;
          }
          .pl-sm-0,
          .px-sm-0 {
            padding-left: 0 !important;
          }
          .p-sm-1 {
            padding: 0.25rem !important;
          }
          .pt-sm-1,
          .py-sm-1 {
            padding-top: 0.25rem !important;
          }
          .pr-sm-1,
          .px-sm-1 {
            padding-right: 0.25rem !important;
          }
          .pb-sm-1,
          .py-sm-1 {
            padding-bottom: 0.25rem !important;
          }
          .pl-sm-1,
          .px-sm-1 {
            padding-left: 0.25rem !important;
          }
          .p-sm-2 {
            padding: 0.5rem !important;
          }
          .pt-sm-2,
          .py-sm-2 {
            padding-top: 0.5rem !important;
          }
          .pr-sm-2,
          .px-sm-2 {
            padding-right: 0.5rem !important;
          }
          .pb-sm-2,
          .py-sm-2 {
            padding-bottom: 0.5rem !important;
          }
          .pl-sm-2,
          .px-sm-2 {
            padding-left: 0.5rem !important;
          }
          .p-sm-3 {
            padding: 1rem !important;
          }
          .pt-sm-3,
          .py-sm-3 {
            padding-top: 1rem !important;
          }
          .pr-sm-3,
          .px-sm-3 {
            padding-right: 1rem !important;
          }
          .pb-sm-3,
          .py-sm-3 {
            padding-bottom: 1rem !important;
          }
          .pl-sm-3,
          .px-sm-3 {
            padding-left: 1rem !important;
          }
          .p-sm-4 {
            padding: 1.5rem !important;
          }
          .pt-sm-4,
          .py-sm-4 {
            padding-top: 1.5rem !important;
          }
          .pr-sm-4,
          .px-sm-4 {
            padding-right: 1.5rem !important;
          }
          .pb-sm-4,
          .py-sm-4 {
            padding-bottom: 1.5rem !important;
          }
          .pl-sm-4,
          .px-sm-4 {
            padding-left: 1.5rem !important;
          }
          .p-sm-5 {
            padding: 3rem !important;
          }
          .pt-sm-5,
          .py-sm-5 {
            padding-top: 3rem !important;
          }
          .pr-sm-5,
          .px-sm-5 {
            padding-right: 3rem !important;
          }
          .pb-sm-5,
          .py-sm-5 {
            padding-bottom: 3rem !important;
          }
          .pl-sm-5,
          .px-sm-5 {
            padding-left: 3rem !important;
          }
          .m-sm-n1 {
            margin: -0.25rem !important;
          }
          .mt-sm-n1,
          .my-sm-n1 {
            margin-top: -0.25rem !important;
          }
          .mr-sm-n1,
          .mx-sm-n1 {
            margin-right: -0.25rem !important;
          }
          .mb-sm-n1,
          .my-sm-n1 {
            margin-bottom: -0.25rem !important;
          }
          .ml-sm-n1,
          .mx-sm-n1 {
            margin-left: -0.25rem !important;
          }
          .m-sm-n2 {
            margin: -0.5rem !important;
          }
          .mt-sm-n2,
          .my-sm-n2 {
            margin-top: -0.5rem !important;
          }
          .mr-sm-n2,
          .mx-sm-n2 {
            margin-right: -0.5rem !important;
          }
          .mb-sm-n2,
          .my-sm-n2 {
            margin-bottom: -0.5rem !important;
          }
          .ml-sm-n2,
          .mx-sm-n2 {
            margin-left: -0.5rem !important;
          }
          .m-sm-n3 {
            margin: -1rem !important;
          }
          .mt-sm-n3,
          .my-sm-n3 {
            margin-top: -1rem !important;
          }
          .mr-sm-n3,
          .mx-sm-n3 {
            margin-right: -1rem !important;
          }
          .mb-sm-n3,
          .my-sm-n3 {
            margin-bottom: -1rem !important;
          }
          .ml-sm-n3,
          .mx-sm-n3 {
            margin-left: -1rem !important;
          }
          .m-sm-n4 {
            margin: -1.5rem !important;
          }
          .mt-sm-n4,
          .my-sm-n4 {
            margin-top: -1.5rem !important;
          }
          .mr-sm-n4,
          .mx-sm-n4 {
            margin-right: -1.5rem !important;
          }
          .mb-sm-n4,
          .my-sm-n4 {
            margin-bottom: -1.5rem !important;
          }
          .ml-sm-n4,
          .mx-sm-n4 {
            margin-left: -1.5rem !important;
          }
          .m-sm-n5 {
            margin: -3rem !important;
          }
          .mt-sm-n5,
          .my-sm-n5 {
            margin-top: -3rem !important;
          }
          .mr-sm-n5,
          .mx-sm-n5 {
            margin-right: -3rem !important;
          }
          .mb-sm-n5,
          .my-sm-n5 {
            margin-bottom: -3rem !important;
          }
          .ml-sm-n5,
          .mx-sm-n5 {
            margin-left: -3rem !important;
          }
          .m-sm-auto {
            margin: auto !important;
          }
          .mt-sm-auto,
          .my-sm-auto {
            margin-top: auto !important;
          }
          .mr-sm-auto,
          .mx-sm-auto {
            margin-right: auto !important;
          }
          .mb-sm-auto,
          .my-sm-auto {
            margin-bottom: auto !important;
          }
          .ml-sm-auto,
          .mx-sm-auto {
            margin-left: auto !important;
          }
        }

        @media (min-width: 768px) {
          .m-md-0 {
            margin: 0 !important;
          }
          .mt-md-0,
          .my-md-0 {
            margin-top: 0 !important;
          }
          .mr-md-0,
          .mx-md-0 {
            margin-right: 0 !important;
          }
          .mb-md-0,
          .my-md-0 {
            margin-bottom: 0 !important;
          }
          .ml-md-0,
          .mx-md-0 {
            margin-left: 0 !important;
          }
          .m-md-1 {
            margin: 0.25rem !important;
          }
          .mt-md-1,
          .my-md-1 {
            margin-top: 0.25rem !important;
          }
          .mr-md-1,
          .mx-md-1 {
            margin-right: 0.25rem !important;
          }
          .mb-md-1,
          .my-md-1 {
            margin-bottom: 0.25rem !important;
          }
          .ml-md-1,
          .mx-md-1 {
            margin-left: 0.25rem !important;
          }
          .m-md-2 {
            margin: 0.5rem !important;
          }
          .mt-md-2,
          .my-md-2 {
            margin-top: 0.5rem !important;
          }
          .mr-md-2,
          .mx-md-2 {
            margin-right: 0.5rem !important;
          }
          .mb-md-2,
          .my-md-2 {
            margin-bottom: 0.5rem !important;
          }
          .ml-md-2,
          .mx-md-2 {
            margin-left: 0.5rem !important;
          }
          .m-md-3 {
            margin: 1rem !important;
          }
          .mt-md-3,
          .my-md-3 {
            margin-top: 1rem !important;
          }
          .mr-md-3,
          .mx-md-3 {
            margin-right: 1rem !important;
          }
          .mb-md-3,
          .my-md-3 {
            margin-bottom: 1rem !important;
          }
          .ml-md-3,
          .mx-md-3 {
            margin-left: 1rem !important;
          }
          .m-md-4 {
            margin: 1.5rem !important;
          }
          .mt-md-4,
          .my-md-4 {
            margin-top: 1.5rem !important;
          }
          .mr-md-4,
          .mx-md-4 {
            margin-right: 1.5rem !important;
          }
          .mb-md-4,
          .my-md-4 {
            margin-bottom: 1.5rem !important;
          }
          .ml-md-4,
          .mx-md-4 {
            margin-left: 1.5rem !important;
          }
          .m-md-5 {
            margin: 3rem !important;
          }
          .mt-md-5,
          .my-md-5 {
            margin-top: 3rem !important;
          }
          .mr-md-5,
          .mx-md-5 {
            margin-right: 3rem !important;
          }
          .mb-md-5,
          .my-md-5 {
            margin-bottom: 3rem !important;
          }
          .ml-md-5,
          .mx-md-5 {
            margin-left: 3rem !important;
          }
          .p-md-0 {
            padding: 0 !important;
          }
          .pt-md-0,
          .py-md-0 {
            padding-top: 0 !important;
          }
          .pr-md-0,
          .px-md-0 {
            padding-right: 0 !important;
          }
          .pb-md-0,
          .py-md-0 {
            padding-bottom: 0 !important;
          }
          .pl-md-0,
          .px-md-0 {
            padding-left: 0 !important;
          }
          .p-md-1 {
            padding: 0.25rem !important;
          }
          .pt-md-1,
          .py-md-1 {
            padding-top: 0.25rem !important;
          }
          .pr-md-1,
          .px-md-1 {
            padding-right: 0.25rem !important;
          }
          .pb-md-1,
          .py-md-1 {
            padding-bottom: 0.25rem !important;
          }
          .pl-md-1,
          .px-md-1 {
            padding-left: 0.25rem !important;
          }
          .p-md-2 {
            padding: 0.5rem !important;
          }
          .pt-md-2,
          .py-md-2 {
            padding-top: 0.5rem !important;
          }
          .pr-md-2,
          .px-md-2 {
            padding-right: 0.5rem !important;
          }
          .pb-md-2,
          .py-md-2 {
            padding-bottom: 0.5rem !important;
          }
          .pl-md-2,
          .px-md-2 {
            padding-left: 0.5rem !important;
          }
          .p-md-3 {
            padding: 1rem !important;
          }
          .pt-md-3,
          .py-md-3 {
            padding-top: 1rem !important;
          }
          .pr-md-3,
          .px-md-3 {
            padding-right: 1rem !important;
          }
          .pb-md-3,
          .py-md-3 {
            padding-bottom: 1rem !important;
          }
          .pl-md-3,
          .px-md-3 {
            padding-left: 1rem !important;
          }
          .p-md-4 {
            padding: 1.5rem !important;
          }
          .pt-md-4,
          .py-md-4 {
            padding-top: 1.5rem !important;
          }
          .pr-md-4,
          .px-md-4 {
            padding-right: 1.5rem !important;
          }
          .pb-md-4,
          .py-md-4 {
            padding-bottom: 1.5rem !important;
          }
          .pl-md-4,
          .px-md-4 {
            padding-left: 1.5rem !important;
          }
          .p-md-5 {
            padding: 3rem !important;
          }
          .pt-md-5,
          .py-md-5 {
            padding-top: 3rem !important;
          }
          .pr-md-5,
          .px-md-5 {
            padding-right: 3rem !important;
          }
          .pb-md-5,
          .py-md-5 {
            padding-bottom: 3rem !important;
          }
          .pl-md-5,
          .px-md-5 {
            padding-left: 3rem !important;
          }
          .m-md-n1 {
            margin: -0.25rem !important;
          }
          .mt-md-n1,
          .my-md-n1 {
            margin-top: -0.25rem !important;
          }
          .mr-md-n1,
          .mx-md-n1 {
            margin-right: -0.25rem !important;
          }
          .mb-md-n1,
          .my-md-n1 {
            margin-bottom: -0.25rem !important;
          }
          .ml-md-n1,
          .mx-md-n1 {
            margin-left: -0.25rem !important;
          }
          .m-md-n2 {
            margin: -0.5rem !important;
          }
          .mt-md-n2,
          .my-md-n2 {
            margin-top: -0.5rem !important;
          }
          .mr-md-n2,
          .mx-md-n2 {
            margin-right: -0.5rem !important;
          }
          .mb-md-n2,
          .my-md-n2 {
            margin-bottom: -0.5rem !important;
          }
          .ml-md-n2,
          .mx-md-n2 {
            margin-left: -0.5rem !important;
          }
          .m-md-n3 {
            margin: -1rem !important;
          }
          .mt-md-n3,
          .my-md-n3 {
            margin-top: -1rem !important;
          }
          .mr-md-n3,
          .mx-md-n3 {
            margin-right: -1rem !important;
          }
          .mb-md-n3,
          .my-md-n3 {
            margin-bottom: -1rem !important;
          }
          .ml-md-n3,
          .mx-md-n3 {
            margin-left: -1rem !important;
          }
          .m-md-n4 {
            margin: -1.5rem !important;
          }
          .mt-md-n4,
          .my-md-n4 {
            margin-top: -1.5rem !important;
          }
          .mr-md-n4,
          .mx-md-n4 {
            margin-right: -1.5rem !important;
          }
          .mb-md-n4,
          .my-md-n4 {
            margin-bottom: -1.5rem !important;
          }
          .ml-md-n4,
          .mx-md-n4 {
            margin-left: -1.5rem !important;
          }
          .m-md-n5 {
            margin: -3rem !important;
          }
          .mt-md-n5,
          .my-md-n5 {
            margin-top: -3rem !important;
          }
          .mr-md-n5,
          .mx-md-n5 {
            margin-right: -3rem !important;
          }
          .mb-md-n5,
          .my-md-n5 {
            margin-bottom: -3rem !important;
          }
          .ml-md-n5,
          .mx-md-n5 {
            margin-left: -3rem !important;
          }
          .m-md-auto {
            margin: auto !important;
          }
          .mt-md-auto,
          .my-md-auto {
            margin-top: auto !important;
          }
          .mr-md-auto,
          .mx-md-auto {
            margin-right: auto !important;
          }
          .mb-md-auto,
          .my-md-auto {
            margin-bottom: auto !important;
          }
          .ml-md-auto,
          .mx-md-auto {
            margin-left: auto !important;
          }
        }

        @media (min-width: 992px) {
          .m-lg-0 {
            margin: 0 !important;
          }
          .mt-lg-0,
          .my-lg-0 {
            margin-top: 0 !important;
          }
          .mr-lg-0,
          .mx-lg-0 {
            margin-right: 0 !important;
          }
          .mb-lg-0,
          .my-lg-0 {
            margin-bottom: 0 !important;
          }
          .ml-lg-0,
          .mx-lg-0 {
            margin-left: 0 !important;
          }
          .m-lg-1 {
            margin: 0.25rem !important;
          }
          .mt-lg-1,
          .my-lg-1 {
            margin-top: 0.25rem !important;
          }
          .mr-lg-1,
          .mx-lg-1 {
            margin-right: 0.25rem !important;
          }
          .mb-lg-1,
          .my-lg-1 {
            margin-bottom: 0.25rem !important;
          }
          .ml-lg-1,
          .mx-lg-1 {
            margin-left: 0.25rem !important;
          }
          .m-lg-2 {
            margin: 0.5rem !important;
          }
          .mt-lg-2,
          .my-lg-2 {
            margin-top: 0.5rem !important;
          }
          .mr-lg-2,
          .mx-lg-2 {
            margin-right: 0.5rem !important;
          }
          .mb-lg-2,
          .my-lg-2 {
            margin-bottom: 0.5rem !important;
          }
          .ml-lg-2,
          .mx-lg-2 {
            margin-left: 0.5rem !important;
          }
          .m-lg-3 {
            margin: 1rem !important;
          }
          .mt-lg-3,
          .my-lg-3 {
            margin-top: 1rem !important;
          }
          .mr-lg-3,
          .mx-lg-3 {
            margin-right: 1rem !important;
          }
          .mb-lg-3,
          .my-lg-3 {
            margin-bottom: 1rem !important;
          }
          .ml-lg-3,
          .mx-lg-3 {
            margin-left: 1rem !important;
          }
          .m-lg-4 {
            margin: 1.5rem !important;
          }
          .mt-lg-4,
          .my-lg-4 {
            margin-top: 1.5rem !important;
          }
          .mr-lg-4,
          .mx-lg-4 {
            margin-right: 1.5rem !important;
          }
          .mb-lg-4,
          .my-lg-4 {
            margin-bottom: 1.5rem !important;
          }
          .ml-lg-4,
          .mx-lg-4 {
            margin-left: 1.5rem !important;
          }
          .m-lg-5 {
            margin: 3rem !important;
          }
          .mt-lg-5,
          .my-lg-5 {
            margin-top: 3rem !important;
          }
          .mr-lg-5,
          .mx-lg-5 {
            margin-right: 3rem !important;
          }
          .mb-lg-5,
          .my-lg-5 {
            margin-bottom: 3rem !important;
          }
          .ml-lg-5,
          .mx-lg-5 {
            margin-left: 3rem !important;
          }
          .p-lg-0 {
            padding: 0 !important;
          }
          .pt-lg-0,
          .py-lg-0 {
            padding-top: 0 !important;
          }
          .pr-lg-0,
          .px-lg-0 {
            padding-right: 0 !important;
          }
          .pb-lg-0,
          .py-lg-0 {
            padding-bottom: 0 !important;
          }
          .pl-lg-0,
          .px-lg-0 {
            padding-left: 0 !important;
          }
          .p-lg-1 {
            padding: 0.25rem !important;
          }
          .pt-lg-1,
          .py-lg-1 {
            padding-top: 0.25rem !important;
          }
          .pr-lg-1,
          .px-lg-1 {
            padding-right: 0.25rem !important;
          }
          .pb-lg-1,
          .py-lg-1 {
            padding-bottom: 0.25rem !important;
          }
          .pl-lg-1,
          .px-lg-1 {
            padding-left: 0.25rem !important;
          }
          .p-lg-2 {
            padding: 0.5rem !important;
          }
          .pt-lg-2,
          .py-lg-2 {
            padding-top: 0.5rem !important;
          }
          .pr-lg-2,
          .px-lg-2 {
            padding-right: 0.5rem !important;
          }
          .pb-lg-2,
          .py-lg-2 {
            padding-bottom: 0.5rem !important;
          }
          .pl-lg-2,
          .px-lg-2 {
            padding-left: 0.5rem !important;
          }
          .p-lg-3 {
            padding: 1rem !important;
          }
          .pt-lg-3,
          .py-lg-3 {
            padding-top: 1rem !important;
          }
          .pr-lg-3,
          .px-lg-3 {
            padding-right: 1rem !important;
          }
          .pb-lg-3,
          .py-lg-3 {
            padding-bottom: 1rem !important;
          }
          .pl-lg-3,
          .px-lg-3 {
            padding-left: 1rem !important;
          }
          .p-lg-4 {
            padding: 1.5rem !important;
          }
          .pt-lg-4,
          .py-lg-4 {
            padding-top: 1.5rem !important;
          }
          .pr-lg-4,
          .px-lg-4 {
            padding-right: 1.5rem !important;
          }
          .pb-lg-4,
          .py-lg-4 {
            padding-bottom: 1.5rem !important;
          }
          .pl-lg-4,
          .px-lg-4 {
            padding-left: 1.5rem !important;
          }
          .p-lg-5 {
            padding: 3rem !important;
          }
          .pt-lg-5,
          .py-lg-5 {
            padding-top: 3rem !important;
          }
          .pr-lg-5,
          .px-lg-5 {
            padding-right: 3rem !important;
          }
          .pb-lg-5,
          .py-lg-5 {
            padding-bottom: 3rem !important;
          }
          .pl-lg-5,
          .px-lg-5 {
            padding-left: 3rem !important;
          }
          .m-lg-n1 {
            margin: -0.25rem !important;
          }
          .mt-lg-n1,
          .my-lg-n1 {
            margin-top: -0.25rem !important;
          }
          .mr-lg-n1,
          .mx-lg-n1 {
            margin-right: -0.25rem !important;
          }
          .mb-lg-n1,
          .my-lg-n1 {
            margin-bottom: -0.25rem !important;
          }
          .ml-lg-n1,
          .mx-lg-n1 {
            margin-left: -0.25rem !important;
          }
          .m-lg-n2 {
            margin: -0.5rem !important;
          }
          .mt-lg-n2,
          .my-lg-n2 {
            margin-top: -0.5rem !important;
          }
          .mr-lg-n2,
          .mx-lg-n2 {
            margin-right: -0.5rem !important;
          }
          .mb-lg-n2,
          .my-lg-n2 {
            margin-bottom: -0.5rem !important;
          }
          .ml-lg-n2,
          .mx-lg-n2 {
            margin-left: -0.5rem !important;
          }
          .m-lg-n3 {
            margin: -1rem !important;
          }
          .mt-lg-n3,
          .my-lg-n3 {
            margin-top: -1rem !important;
          }
          .mr-lg-n3,
          .mx-lg-n3 {
            margin-right: -1rem !important;
          }
          .mb-lg-n3,
          .my-lg-n3 {
            margin-bottom: -1rem !important;
          }
          .ml-lg-n3,
          .mx-lg-n3 {
            margin-left: -1rem !important;
          }
          .m-lg-n4 {
            margin: -1.5rem !important;
          }
          .mt-lg-n4,
          .my-lg-n4 {
            margin-top: -1.5rem !important;
          }
          .mr-lg-n4,
          .mx-lg-n4 {
            margin-right: -1.5rem !important;
          }
          .mb-lg-n4,
          .my-lg-n4 {
            margin-bottom: -1.5rem !important;
          }
          .ml-lg-n4,
          .mx-lg-n4 {
            margin-left: -1.5rem !important;
          }
          .m-lg-n5 {
            margin: -3rem !important;
          }
          .mt-lg-n5,
          .my-lg-n5 {
            margin-top: -3rem !important;
          }
          .mr-lg-n5,
          .mx-lg-n5 {
            margin-right: -3rem !important;
          }
          .mb-lg-n5,
          .my-lg-n5 {
            margin-bottom: -3rem !important;
          }
          .ml-lg-n5,
          .mx-lg-n5 {
            margin-left: -3rem !important;
          }
          .m-lg-auto {
            margin: auto !important;
          }
          .mt-lg-auto,
          .my-lg-auto {
            margin-top: auto !important;
          }
          .mr-lg-auto,
          .mx-lg-auto {
            margin-right: auto !important;
          }
          .mb-lg-auto,
          .my-lg-auto {
            margin-bottom: auto !important;
          }
          .ml-lg-auto,
          .mx-lg-auto {
            margin-left: auto !important;
          }
        }

        @media (min-width: 1200px) {
          .m-xl-0 {
            margin: 0 !important;
          }
          .mt-xl-0,
          .my-xl-0 {
            margin-top: 0 !important;
          }
          .mr-xl-0,
          .mx-xl-0 {
            margin-right: 0 !important;
          }
          .mb-xl-0,
          .my-xl-0 {
            margin-bottom: 0 !important;
          }
          .ml-xl-0,
          .mx-xl-0 {
            margin-left: 0 !important;
          }
          .m-xl-1 {
            margin: 0.25rem !important;
          }
          .mt-xl-1,
          .my-xl-1 {
            margin-top: 0.25rem !important;
          }
          .mr-xl-1,
          .mx-xl-1 {
            margin-right: 0.25rem !important;
          }
          .mb-xl-1,
          .my-xl-1 {
            margin-bottom: 0.25rem !important;
          }
          .ml-xl-1,
          .mx-xl-1 {
            margin-left: 0.25rem !important;
          }
          .m-xl-2 {
            margin: 0.5rem !important;
          }
          .mt-xl-2,
          .my-xl-2 {
            margin-top: 0.5rem !important;
          }
          .mr-xl-2,
          .mx-xl-2 {
            margin-right: 0.5rem !important;
          }
          .mb-xl-2,
          .my-xl-2 {
            margin-bottom: 0.5rem !important;
          }
          .ml-xl-2,
          .mx-xl-2 {
            margin-left: 0.5rem !important;
          }
          .m-xl-3 {
            margin: 1rem !important;
          }
          .mt-xl-3,
          .my-xl-3 {
            margin-top: 1rem !important;
          }
          .mr-xl-3,
          .mx-xl-3 {
            margin-right: 1rem !important;
          }
          .mb-xl-3,
          .my-xl-3 {
            margin-bottom: 1rem !important;
          }
          .ml-xl-3,
          .mx-xl-3 {
            margin-left: 1rem !important;
          }
          .m-xl-4 {
            margin: 1.5rem !important;
          }
          .mt-xl-4,
          .my-xl-4 {
            margin-top: 1.5rem !important;
          }
          .mr-xl-4,
          .mx-xl-4 {
            margin-right: 1.5rem !important;
          }
          .mb-xl-4,
          .my-xl-4 {
            margin-bottom: 1.5rem !important;
          }
          .ml-xl-4,
          .mx-xl-4 {
            margin-left: 1.5rem !important;
          }
          .m-xl-5 {
            margin: 3rem !important;
          }
          .mt-xl-5,
          .my-xl-5 {
            margin-top: 3rem !important;
          }
          .mr-xl-5,
          .mx-xl-5 {
            margin-right: 3rem !important;
          }
          .mb-xl-5,
          .my-xl-5 {
            margin-bottom: 3rem !important;
          }
          .ml-xl-5,
          .mx-xl-5 {
            margin-left: 3rem !important;
          }
          .p-xl-0 {
            padding: 0 !important;
          }
          .pt-xl-0,
          .py-xl-0 {
            padding-top: 0 !important;
          }
          .pr-xl-0,
          .px-xl-0 {
            padding-right: 0 !important;
          }
          .pb-xl-0,
          .py-xl-0 {
            padding-bottom: 0 !important;
          }
          .pl-xl-0,
          .px-xl-0 {
            padding-left: 0 !important;
          }
          .p-xl-1 {
            padding: 0.25rem !important;
          }
          .pt-xl-1,
          .py-xl-1 {
            padding-top: 0.25rem !important;
          }
          .pr-xl-1,
          .px-xl-1 {
            padding-right: 0.25rem !important;
          }
          .pb-xl-1,
          .py-xl-1 {
            padding-bottom: 0.25rem !important;
          }
          .pl-xl-1,
          .px-xl-1 {
            padding-left: 0.25rem !important;
          }
          .p-xl-2 {
            padding: 0.5rem !important;
          }
          .pt-xl-2,
          .py-xl-2 {
            padding-top: 0.5rem !important;
          }
          .pr-xl-2,
          .px-xl-2 {
            padding-right: 0.5rem !important;
          }
          .pb-xl-2,
          .py-xl-2 {
            padding-bottom: 0.5rem !important;
          }
          .pl-xl-2,
          .px-xl-2 {
            padding-left: 0.5rem !important;
          }
          .p-xl-3 {
            padding: 1rem !important;
          }
          .pt-xl-3,
          .py-xl-3 {
            padding-top: 1rem !important;
          }
          .pr-xl-3,
          .px-xl-3 {
            padding-right: 1rem !important;
          }
          .pb-xl-3,
          .py-xl-3 {
            padding-bottom: 1rem !important;
          }
          .pl-xl-3,
          .px-xl-3 {
            padding-left: 1rem !important;
          }
          .p-xl-4 {
            padding: 1.5rem !important;
          }
          .pt-xl-4,
          .py-xl-4 {
            padding-top: 1.5rem !important;
          }
          .pr-xl-4,
          .px-xl-4 {
            padding-right: 1.5rem !important;
          }
          .pb-xl-4,
          .py-xl-4 {
            padding-bottom: 1.5rem !important;
          }
          .pl-xl-4,
          .px-xl-4 {
            padding-left: 1.5rem !important;
          }
          .p-xl-5 {
            padding: 3rem !important;
          }
          .pt-xl-5,
          .py-xl-5 {
            padding-top: 3rem !important;
          }
          .pr-xl-5,
          .px-xl-5 {
            padding-right: 3rem !important;
          }
          .pb-xl-5,
          .py-xl-5 {
            padding-bottom: 3rem !important;
          }
          .pl-xl-5,
          .px-xl-5 {
            padding-left: 3rem !important;
          }
          .m-xl-n1 {
            margin: -0.25rem !important;
          }
          .mt-xl-n1,
          .my-xl-n1 {
            margin-top: -0.25rem !important;
          }
          .mr-xl-n1,
          .mx-xl-n1 {
            margin-right: -0.25rem !important;
          }
          .mb-xl-n1,
          .my-xl-n1 {
            margin-bottom: -0.25rem !important;
          }
          .ml-xl-n1,
          .mx-xl-n1 {
            margin-left: -0.25rem !important;
          }
          .m-xl-n2 {
            margin: -0.5rem !important;
          }
          .mt-xl-n2,
          .my-xl-n2 {
            margin-top: -0.5rem !important;
          }
          .mr-xl-n2,
          .mx-xl-n2 {
            margin-right: -0.5rem !important;
          }
          .mb-xl-n2,
          .my-xl-n2 {
            margin-bottom: -0.5rem !important;
          }
          .ml-xl-n2,
          .mx-xl-n2 {
            margin-left: -0.5rem !important;
          }
          .m-xl-n3 {
            margin: -1rem !important;
          }
          .mt-xl-n3,
          .my-xl-n3 {
            margin-top: -1rem !important;
          }
          .mr-xl-n3,
          .mx-xl-n3 {
            margin-right: -1rem !important;
          }
          .mb-xl-n3,
          .my-xl-n3 {
            margin-bottom: -1rem !important;
          }
          .ml-xl-n3,
          .mx-xl-n3 {
            margin-left: -1rem !important;
          }
          .m-xl-n4 {
            margin: -1.5rem !important;
          }
          .mt-xl-n4,
          .my-xl-n4 {
            margin-top: -1.5rem !important;
          }
          .mr-xl-n4,
          .mx-xl-n4 {
            margin-right: -1.5rem !important;
          }
          .mb-xl-n4,
          .my-xl-n4 {
            margin-bottom: -1.5rem !important;
          }
          .ml-xl-n4,
          .mx-xl-n4 {
            margin-left: -1.5rem !important;
          }
          .m-xl-n5 {
            margin: -3rem !important;
          }
          .mt-xl-n5,
          .my-xl-n5 {
            margin-top: -3rem !important;
          }
          .mr-xl-n5,
          .mx-xl-n5 {
            margin-right: -3rem !important;
          }
          .mb-xl-n5,
          .my-xl-n5 {
            margin-bottom: -3rem !important;
          }
          .ml-xl-n5,
          .mx-xl-n5 {
            margin-left: -3rem !important;
          }
          .m-xl-auto {
            margin: auto !important;
          }
          .mt-xl-auto,
          .my-xl-auto {
            margin-top: auto !important;
          }
          .mr-xl-auto,
          .mx-xl-auto {
            margin-right: auto !important;
          }
          .mb-xl-auto,
          .my-xl-auto {
            margin-bottom: auto !important;
          }
          .ml-xl-auto,
          .mx-xl-auto {
            margin-left: auto !important;
          }
        }

        .text-monospace {
          font-family: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace !important;
        }

        .text-justify {
          text-align: justify !important;
        }

        .text-wrap {
          white-space: normal !important;
        }

        .text-nowrap {
          white-space: nowrap !important;
        }

        .text-truncate {
          overflow: hidden;
          text-overflow: ellipsis;
          white-space: nowrap;
        }

        .text-left {
          text-align: left !important;
        }

        .text-right {
          text-align: right !important;
        }

        .text-center {
          text-align: center !important;
        }

        @media (min-width: 576px) {
          .text-sm-left {
            text-align: left !important;
          }
          .text-sm-right {
            text-align: right !important;
          }
          .text-sm-center {
            text-align: center !important;
          }
        }

        @media (min-width: 768px) {
          .text-md-left {
            text-align: left !important;
          }
          .text-md-right {
            text-align: right !important;
          }
          .text-md-center {
            text-align: center !important;
          }
        }

        @media (min-width: 992px) {
          .text-lg-left {
            text-align: left !important;
          }
          .text-lg-right {
            text-align: right !important;
          }
          .text-lg-center {
            text-align: center !important;
          }
        }

        @media (min-width: 1200px) {
          .text-xl-left {
            text-align: left !important;
          }
          .text-xl-right {
            text-align: right !important;
          }
          .text-xl-center {
            text-align: center !important;
          }
        }

        .text-lowercase {
          text-transform: lowercase !important;
        }

        .text-uppercase {
          text-transform: uppercase !important;
        }

        .text-capitalize {
          text-transform: capitalize !important;
        }

        .font-weight-light {
          font-weight: 300 !important;
        }

        .font-weight-lighter {
          font-weight: lighter !important;
        }

        .font-weight-normal {
          font-weight: 400 !important;
        }

        .font-weight-bold {
          font-weight: 700 !important;
        }

        .font-weight-bolder {
          font-weight: bolder !important;
        }

        .font-italic {
          font-style: italic !important;
        }

        .text-white {
          color: #ffffff !important;
        }

        .text-primary {
          color: #b66dff !important;
        }

        a.text-primary:hover, a.text-primary:focus {
          color: #9021ff !important;
        }

        .text-secondary {
          color: #d8d8d8 !important;
        }

        a.text-secondary:hover, a.text-secondary:focus {
          color: #b2b2b2 !important;
        }

        .text-success {
          color: #1bcfb4 !important;
        }

        a.text-success:hover, a.text-success:focus {
          color: #128b79 !important;
        }

        .text-info {
          color: #198ae3 !important;
        }

        a.text-info:hover, a.text-info:focus {
          color: #11609e !important;
        }

        .text-warning {
          color: #fed713 !important;
        }

        a.text-warning:hover, a.text-warning:focus {
          color: #c4a301 !important;
        }

        .text-danger {
          color: #fe7c96 !important;
        }

        a.text-danger:hover, a.text-danger:focus {
          color: #fd3059 !important;
        }

        .text-light {
          color: #f8f9fa !important;
        }

        a.text-light:hover, a.text-light:focus {
          color: #cbd3da !important;
        }

        .text-dark {
          color: #3e4b5b !important;
        }

        a.text-dark:hover, a.text-dark:focus {
          color: #1f262e !important;
        }

        .text-body {
          color: #343a40 !important;
        }

        .text-muted, .preview-list .preview-item .preview-item-content p .content-category {
          color: #9c9fa6 !important;
        }

        .text-black-50 {
          color: rgba(0, 0, 0, 0.5) !important;
        }

        .text-white-50 {
          color: rgba(255, 255, 255, 0.5) !important;
        }

        .text-hide {
          font: 0/0 a;
          color: transparent;
          text-shadow: none;
          background-color: transparent;
          border: 0;
        }

        .text-decoration-none {
          text-decoration: none !important;
        }

        .text-break {
          word-break: break-word !important;
          overflow-wrap: break-word !important;
        }

        .text-reset {
          color: inherit !important;
        }

        .visible {
          visibility: visible !important;
        }

        .invisible {
          visibility: hidden !important;
        }

        @media print {
          *,
          *::before,
          *::after {
            text-shadow: none !important;
            box-shadow: none !important;
          }
          a:not(.btn) {
            text-decoration: underline;
          }
          abbr[title]::after {
            content: " (" attr(title) ")";
          }
          pre {
            white-space: pre-wrap !important;
          }
          pre,
          blockquote {
            border: 1px solid #adb5bd;
            page-break-inside: avoid;
          }
          thead {
            display: table-header-group;
          }
          tr,
          img {
            page-break-inside: avoid;
          }
          p,
          h2,
          h3 {
            orphans: 3;
            widows: 3;
          }
          h2,
          h3 {
            page-break-after: avoid;
          }
          @page {
            size: a3;
          }
          body {
            min-width: 992px !important;
          }
          .container {
            min-width: 992px !important;
          }
          .navbar {
            display: none;
          }
          .badge {
            border: 1px solid #000;
          }
          .table {
            border-collapse: collapse !important;
          }
          .table td,
          .table th {
            background-color: #ffffff !important;
          }
          .table-bordered th,
          .table-bordered td {
            border: 1px solid #dee2e6 !important;
          }
          .table-dark {
            color: inherit;
          }
          .table-dark th,
          .table-dark td,
          .table-dark thead th,
          .table-dark tbody + tbody {
            border-color: #ebedf2;
          }
          .table .thead-dark th {
            color: inherit;
            border-color: #ebedf2;
          }
        }

        /*-------------------------------------------------------------------*/
        /* === Template mixins === */
        /* Miscellaneous Mixins */
        /* Animation Mixins */
        @keyframes dropdownAnimation {
          from {
            opacity: 0;
            transform: translate3d(0, -30px, 0);
          }
          to {
            opacity: 1;
            transform: none;
            transform: translate3d(0, 0px, 0);
          }
        }

        .dropdownAnimation, .navbar .navbar-menu-wrapper .dropdown .dropdown-menu {
          animation-name: dropdownAnimation;
          -webkit-animation-duration: 0.25s;
          -moz-animation-duration: 0.25s;
          -ms-animation-duration: 0.25s;
          -o-animation-duration: 0.25s;
          animation-duration: 0.25s;
          -webkit-animation-fill-mode: both;
          -moz-animation-fill-mode: both;
          -ms-animation-fill-mode: both;
          -o-animation-fill-mode: both;
          animation-fill-mode: both;
        }

        @keyframes fadeOut {
          from {
            opacity: 1;
          }
          to {
            opacity: 0;
          }
        }

        .fadeOut {
          animation-name: fadeOut;
        }

        .infinite-spin {
          animation-name: spin;
          animation-duration: 3s;
          animation-iteration-count: infinite;
          animation-timing-function: linear;
        }

        @keyframes spin {
          from {
            transform: rotate(0deg);
          }
          to {
            transform: rotate(360deg);
          }
        }

        @keyframes fadeInUp {
          from {
            opacity: 0;
            transform: translate3d(0, 100%, 0);
          }
          to {
            opacity: 1;
            transform: none;
          }
        }

        .fadeInUp {
          animation-name: fadeInUp;
        }

        /*-------------------------------------------------------------------*/
        /* === Core Styles === */
        /* Reset Styles */
        body {
          padding: 0;
          margin: 0;
          overflow-x: hidden;
        }

        .form-control,
        .form-control:focus {
          -webkit-box-shadow: none;
          -moz-box-shadow: none;
        }

        .form-control {
          box-shadow: none;
        }

        .form-control:focus {
          outline: 0;
          box-shadow: none;
        }

        a,
        div,
        h1,
        h2,
        h3,
        h4,
        h5,
        p,
        span {
          text-shadow: none;
        }

        [type=button]:focus,
        a:active,
        a:focus,
        a:visited,
        button::-moz-focus-inner,
        input[type=reset]::-moz-focus-inner,
        input[type=button]::-moz-focus-inner,
        input[type=submit]::-moz-focus-inner,
        input[type=file] > input[type=button]::-moz-focus-inner,
        select::-moz-focus-inner {
          outline: 0;
        }

        input,
        .form-control:focus,
        input:focus,
        select:focus,
        textarea:focus,
        button:focus {
          outline: none;
          outline-width: 0;
          outline-color: transparent;
          box-shadow: none;
          outline-style: none;
        }

        textarea {
          resize: none;
          overflow-x: hidden;
        }

        .btn,
        .btn-group.open .dropdown-toggle,
        .btn:active,
        .btn:focus,
        .btn:hover,
        .btn:visited,
        a,
        a:active,
        a:checked,
        a:focus,
        a:hover,
        a:visited,
        body,
        button,
        button:active,
        button:hover,
        button:visited,
        div,
        input,
        input:active,
        input:focus,
        input:hover,
        input:visited,
        select,
        select:active,
        select:focus,
        select:visited,
        textarea,
        textarea:active,
        textarea:focus,
        textarea:hover,
        textarea:visited {
          -webkit-box-shadow: none;
          -moz-box-shadow: none;
          box-shadow: none;
        }

        .btn.active.focus,
        .btn.active:focus,
        .btn.focus,
        .btn:active.focus,
        .btn:active:focus,
        .btn:focus,
        button,
        button:active,
        button:checked,
        button:focus,
        button:hover,
        button:visited {
          outline: 0;
          outline-offset: 0;
        }

        .bootstrap-select .dropdown-toggle:focus {
          outline: 0;
          outline-offset: 0;
        }

        .dropdown-menu > li > a:active,
        .dropdown-menu > li > a:focus,
        .dropdown-menu > li > a:hover,
        .dropdown-menu > li > a:visited {
          outline: 0;
        }

        a:focus,
        input:focus {
          border-color: transparent;
          outline: none;
        }

        /* Fonts */
        @font-face {
          font-family: 'ubuntu-light';
          src: url("../fonts/Ubuntu/Ubuntu-Light.eot");
          /* IE9 Compat Modes */
          src: url("../fonts/Ubuntu/Ubuntu-Light.woff2") format("woff2"), url("../fonts/Ubuntu/Ubuntu-Light.woff") format("woff"), url("../fonts/Ubuntu/Ubuntu-Light.ttf") format("truetype");
        }

        @font-face {
          font-family: 'ubuntu-regular';
          src: url("../fonts/Ubuntu/Ubuntu-Regular.eot");
          /* IE9 Compat Modes */
          src: url("../fonts/Ubuntu/Ubuntu-Regular.woff2") format("woff2"), url("../fonts/Ubuntu/Ubuntu-Regular.woff") format("woff"), url("../fonts/Ubuntu/Ubuntu-Regular.ttf") format("truetype");
        }

        @font-face {
          font-family: 'ubuntu-medium';
          src: url("../fonts/Ubuntu/Ubuntu-Medium.eot");
          /* IE9 Compat Modes */
          src: url("../fonts/Ubuntu/Ubuntu-Medium.woff2") format("woff2"), url("../fonts/Ubuntu/Ubuntu-Medium.woff") format("woff"), url("../fonts/Ubuntu/Ubuntu-Medium.ttf") format("truetype");
        }

        @font-face {
          font-family: 'ubuntu-bold';
          src: url("../fonts/Ubuntu/Ubuntu-Bold.eot");
          /* IE9 Compat Modes */
          src: url("../fonts/Ubuntu/Ubuntu-Bold.woff2") format("woff2"), url("../fonts/Ubuntu/Ubuntu-Bold.woff") format("woff"), url("../fonts/Ubuntu/Ubuntu-Bold.ttf") format("truetype");
        }

        /* Backgrounds  */
        .bg-gradient-primary {
          background: linear-gradient(to right, #da8cff, #9a55ff);
        }

        .bg-gradient-secondary {
          background: linear-gradient(to right, #e7ebf0, #868e96);
        }

        .bg-gradient-success {
          background: linear-gradient(to right, #84d9d2, #07cdae);
        }

        .bg-gradient-info {
          background: linear-gradient(to right, #90caf9, #047edf 99%);
        }

        .bg-gradient-warning {
          background: linear-gradient(to right, #f6e384, #ffd500);
        }

        .bg-gradient-danger {
          background: linear-gradient(to right, #ffbf96, #fe7096);
        }

        .bg-gradient-light {
          background: linear-gradient(to bottom, #f4f4f4, #e4e4e9);
        }

        .bg-gradient-dark {
          background: linear-gradient(89deg, #5e7188, #3e4b5b);
        }

        .sidebar-grdient-dark {
          background: #6a008a;
          background: -moz-linear-gradient(top, #6a008a 0%, #6a008a 20%, #fa0053 100%);
          background: -webkit-gradient(left top, left bottom, color-stop(0%, #6a008a), color-stop(20%, #6a008a), color-stop(100%, #fa0053));
          background: -webkit-linear-gradient(top, #6a008a 0%, #6a008a 20%, #fa0053 100%);
          background: -o-linear-gradient(top, #6a008a 0%, #6a008a 20%, #fa0053 100%);
          background: -ms-linear-gradient(top, #6a008a 0%, #6a008a 20%, #fa0053 100%);
          background: linear-gradient(to bottom, #6a008a 0%, #6a008a 20%, #fa0053 100%);
          filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6a008a', endColorstr='#fa0053', GradientType=0 );
          color: #ffffff;
        }

        /* Sidebar */
        .sidebar {
          min-height: calc(100vh - 70px);
          background: #ffffff;
          font-family: "ubuntu-regular", sans-serif;
          padding: 0;
          width: 260px;
          z-index: 11;
          transition: width 0.25s ease, background 0.25s ease;
          -webkit-transition: width 0.25s ease, background 0.25s ease;
          -moz-transition: width 0.25s ease, background 0.25s ease;
          -ms-transition: width 0.25s ease, background 0.25s ease;
        }

        .sidebar .nav {
          overflow: hidden;
          flex-wrap: nowrap;
          flex-direction: column;
          margin-bottom: 60px;
        }

        .sidebar .nav .nav-item {
          padding: 0 2.25rem;
          -webkit-transition-duration: 0.25s;
          -moz-transition-duration: 0.25s;
          -o-transition-duration: 0.25s;
          transition-duration: 0.25s;
          transition-property: background;
          -webkit-transition-property: background;
        }

        .sidebar .nav .nav-item .collapse {
          z-index: 999;
        }

        .sidebar .nav .nav-item .nav-link {
          display: -webkit-flex;
          display: flex;
          -webkit-align-items: center;
          align-items: center;
          white-space: nowrap;
          padding: 1.125rem 0 1.125rem 0;
          color: #3e4b5b;
          -webkit-transition-duration: 0.45s;
          -moz-transition-duration: 0.45s;
          -o-transition-duration: 0.45s;
          transition-duration: 0.45s;
          transition-property: color;
          -webkit-transition-property: color;
        }

        .sidebar .nav .nav-item .nav-link i {
          color: inherit;
        }

        .sidebar .nav .nav-item .nav-link i.menu-icon {
          font-size: 1.125rem;
          line-height: 1;
          margin-left: auto;
          color: #bba8bff5;
        }

        .sidebar .nav .nav-item .nav-link i.menu-icon:before {
          vertical-align: middle;
        }

        .sidebar .nav .nav-item .nav-link i.menu-arrow {
          font: normal normal normal 24px/1 "Material Design Icons";
          line-height: 1;
          font-size: 1.125rem;
          margin-left: auto;
          color: #9e9da0;
        }

        .sidebar .nav .nav-item .nav-link i.menu-arrow:before {
          content: "\f141";
          font-size: inherit;
          color: inherit;
        }

        .sidebar .nav .nav-item .nav-link i.menu-arrow + .menu-icon {
          margin-left: .25rem;
        }

        .sidebar .nav .nav-item .nav-link .menu-title {
          color: inherit;
          display: inline-block;
          font-size: 0.875rem;
          line-height: 1;
          vertical-align: middle;
        }

        .sidebar .nav .nav-item .nav-link .badge {
          margin-right: auto;
          margin-left: 1rem;
        }

        .sidebar .nav .nav-item .nav-link[aria-expanded="true"] .menu-arrow:before {
          content: "\f140";
        }

        .sidebar .nav .nav-item.active {
          background: #ffffff;
        }

        .sidebar .nav .nav-item.active > .nav-link .menu-title {
          color: #b66dff;
          font-family: "ubuntu-medium", sans-serif;
        }

        .sidebar .nav .nav-item.active > .nav-link i {
          color: #b66dff;
        }

        .sidebar .nav .nav-item:hover {
          background: #fcfcfc;
        }

        .sidebar .nav .nav-item.nav-profile .nav-link {
          height: auto;
          line-height: 1;
          border-top: 0;
          padding: 1.25rem 0;
        }

        .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-image {
          width: 44px;
          height: 44px;
        }

        .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-image img {
          width: 44px;
          height: 44px;
          border-radius: 100%;
        }

        .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-text {
          margin-left: 1rem;
        }

        .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-badge {
          font-size: 1.125rem;
          margin-left: auto;
        }

        .sidebar .nav .nav-item.sidebar-actions {
          margin-top: 1rem;
        }

        .sidebar .nav .nav-item.sidebar-actions .nav-link {
          border-top: 0;
          display: block;
          height: auto;
        }

        .sidebar .nav .nav-item.sidebar-actions:hover {
          background: initial;
        }

        .sidebar .nav .nav-item.sidebar-actions:hover .nav-link {
          color: initial;
        }

        .sidebar .nav:not(.sub-menu) > .nav-item:hover:not(.nav-category):not(.nav-profile) > .nav-link {
          color: #29323d;
        }

        .sidebar .nav.sub-menu {
          margin-bottom: 20px;
          margin-top: 0;
          list-style: none;
        }

        .sidebar .nav.sub-menu .nav-item {
          padding: 0;
        }

        .sidebar .nav.sub-menu .nav-item .nav-link {
          color: #888;
          padding: 0.75rem 2rem 0.75rem 2rem;
          position: relative;
          font-size: 0.8125rem;
          line-height: 1;
          height: auto;
          border-top: 0;
        }

        .sidebar .nav.sub-menu .nav-item .nav-link:before {
          content: "\F054";
          font-family: "Material Design Icons";
          display: block;
          position: absolute;
          left: 0px;
          top: 50%;
          -moz-transform: translateY(-50%);
          -o-transform: translateY(-50%);
          -ms-transform: translateY(-50%);
          -webkit-transform: translateY(-50%);
          transform: translateY(-50%);
          color: #a2a2a2;
          font-size: .75rem;
        }

        .sidebar .nav.sub-menu .nav-item .nav-link.active {
          color: #b66dff;
          background: transparent;
        }

        .sidebar .nav.sub-menu .nav-item .nav-link:hover {
          color: #555555;
        }

        .sidebar .nav.sub-menu .nav-item:hover {
          background: transparent;
        }

        /* style for off-canvas menu*/
        @media screen and (max-width: 991px) {
          .sidebar-offcanvas {
            position: fixed;
            max-height: calc(100vh - 70px);
            top: 70px;
            bottom: 0;
            overflow: auto;
            right: -260px;
            -webkit-transition: all 0.25s ease-out;
            -o-transition: all 0.25s ease-out;
            transition: all 0.25s ease-out;
          }
          .sidebar-offcanvas.active {
            right: 0;
          }
        }

        /* Navbar */
        .navbar .navbar-brand-wrapper .navbar-brand.brand-logo-mini {
          display: none;
        }

        .navbar .navbar-menu-wrapper .count-indicator {
          position: relative;
        }

        .navbar .navbar-menu-wrapper .count-indicator .count-symbol,
        .navbar .navbar-menu-wrapper .count-indicator .count-number {
          position: absolute;
          border-radius: 100%;
          border: 2px solid #ffffff;
        }

        .navbar .navbar-menu-wrapper .count-indicator .count-symbol {
          top: 17px;
          right: -3px;
          width: 10px;
          height: 10px;
        }

        .navbar .navbar-menu-wrapper .count-indicator .count-number {
          min-width: 14px;
          height: 14px;
          font-size: .5rem;
          color: #ffffff;
          bottom: 16px;
          right: -5px;
          line-height: 1;
          text-align: center;
        }

        .navbar .navbar-menu-wrapper .count-indicator:after {
          display: none;
        }

        .navbar .navbar-menu-wrapper .dropdown .dropdown-toggle:after {
          color: #b66dff;
          font-size: 1rem;
        }

        .navbar .navbar-menu-wrapper .navbar-nav {
          flex-direction: row;
          align-items: center;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown {
          position: absolute;
          font-size: 0.9rem;
          margin-top: 0;
          right: 0;
          left: auto;
          padding: 0;
        }

        .rtl .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown {
          right: auto;
          left: 0;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item {
          margin-bottom: 0;
          padding: 11px 13px;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item i {
          font-size: 17px;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item .ellipsis {
          max-width: 200px;
          overflow: hidden;
          text-overflow: ellipsis;
        }

        .rtl .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item i {
          margin-left: 10px;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-divider {
          margin: 0;
        }

        @media (max-width: 991px) {
          .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown {
            position: static;
          }
          .navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown {
            left: 20px;
            right: 20px;
            top: 70px;
            width: calc(100% - 40px);
          }
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-img {
          position: relative;
          width: 32px;
          height: 32px;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-img img {
          width: 32px;
          height: 32px;
          border-radius: 100%;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-img .availability-status {
          position: absolute;
          width: 10px;
          height: 10px;
          border-radius: 100%;
          border: 2px solid #ffffff;
          bottom: 5px;
          right: -5px;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-img .availability-status.online {
          background: #1bcfb4;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-img .availability-status.offline {
          background: #fe7c96;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-img .availability-status.busy {
          background: #fed713;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-text {
          margin-left: 1.25rem;
        }

        .rtl .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-text {
          margin-left: 0;
          margin-right: 1.25rem;
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-text p {
          line-height: 1;
        }

        @media (max-width: 767px) {
          .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link .nav-profile-text {
            display: none;
          }
        }

        .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile .nav-link.dropdown-toggle:after {
          line-height: 2;
        }

        @media (min-width: 992px) {
          .navbar .navbar-menu-wrapper .navbar-nav.navbar-nav-right {
            margin-left: auto;
          }
          .rtl .navbar .navbar-menu-wrapper .navbar-nav.navbar-nav-right {
            margin-left: 0;
            margin-right: auto;
          }
        }

        .navbar.default-layout-navbar {
          font-family: "ubuntu-light", sans-serif;
          background: #ffffff;
          transition: background 0.25s ease;
          -webkit-transition: background 0.25s ease;
          -moz-transition: background 0.25s ease;
          -ms-transition: background 0.25s ease;
        }

        .navbar.default-layout-navbar .navbar-brand-wrapper {
          transition: width 0.25s ease, background 0.25s ease;
          -webkit-transition: width 0.25s ease, background 0.25s ease;
          -moz-transition: width 0.25s ease, background 0.25s ease;
          -ms-transition: width 0.25s ease, background 0.25s ease;
          background: #ffffff;
          width: 260px;
          height: 70px;
        }

        .sidebar-light .navbar.default-layout-navbar .navbar-brand-wrapper {
          background: #ffffff;
        }

        @media (max-width: 991px) {
          .navbar.default-layout-navbar .navbar-brand-wrapper {
            width: 55px;
          }
        }

        .navbar.default-layout-navbar .navbar-brand-wrapper .navbar-brand {
          color: #27367f;
          font-size: 1.5rem;
          line-height: 48px;
          margin-right: 0;
          padding: .25rem 0;
          width: 100%;
        }

        .navbar.default-layout-navbar .navbar-brand-wrapper .navbar-brand:active, .navbar.default-layout-navbar .navbar-brand-wrapper .navbar-brand:focus, .navbar.default-layout-navbar .navbar-brand-wrapper .navbar-brand:hover {
          color: #1b2658;
        }

        .navbar.default-layout-navbar .navbar-brand-wrapper .navbar-brand img {
          width: calc(260px - 120px);
          max-width: 100%;
          height: 28px;
          margin: auto;
          vertical-align: middle;
        }

        .navbar.default-layout-navbar .navbar-brand-wrapper .brand-logo-mini img {
          width: calc(70px - 50px);
          max-width: 100%;
          height: 28px;
          margin: auto;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper {
          transition: width 0.25s ease;
          -webkit-transition: width 0.25s ease;
          -moz-transition: width 0.25s ease;
          -ms-transition: width 0.25s ease;
          color: #9c9fa6;
          padding-left: 24px;
          padding-right: 24px;
          width: calc(100% - 260px);
          height: 70px;
        }

        @media (max-width: 991px) {
          .navbar.default-layout-navbar .navbar-menu-wrapper {
            width: auto;
            padding-left: 15px;
            padding-right: 15px;
          }
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-toggler {
          border: 0;
          color: inherit;
          height: 70px;
          border-radius: 0px;
          padding-left: 5px;
          padding-right: 20px;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-toggler:not(.navbar-toggler-right) {
          font-size: 1.5rem;
        }

        @media (max-width: 991px) {
          .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-toggler:not(.navbar-toggler-right) {
            display: none;
          }
        }

        @media (max-width: 991px) {
          .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-toggler.navbar-toggler-right {
            padding-left: 15px;
            padding-right: 11px;
            border-right: none;
          }
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .search-field .input-group input {
          font-size: 0.875rem;
          padding: .5rem;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .search-field .input-group input:-ms-input-placeholder {
          font-size: 0.875rem;
          color: #9c9fa6;
          font-family: "ubuntu-light", sans-serif;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .search-field .input-group input:-moz-placeholder {
          font-size: 0.875rem;
          color: #9c9fa6;
          font-family: "ubuntu-light", sans-serif;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .search-field .input-group input::-moz-placeholder {
          font-size: 0.875rem;
          color: #9c9fa6;
          font-family: "ubuntu-light", sans-serif;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .search-field .input-group input::-webkit-input-placeholder {
          font-size: 0.875rem;
          color: #9c9fa6;
          font-family: "ubuntu-light", sans-serif;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .search-field .input-group i {
          font-size: 17px;
          margin-right: 0;
          color: #9c9fa6;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .search-field .input-group .input-group-text {
          background: transparent;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-nav .nav-item .nav-link {
          color: inherit;
          font-size: 0.875rem;
          margin-left: 1.5rem;
          margin-right: 1.5rem;
          height: 70px;
          display: -webkit-flex;
          display: flex;
          -webkit-align-items: center;
          align-items: center;
        }

        @media (max-width: 767px) {
          .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-nav .nav-item .nav-link {
            margin-left: .8rem;
            margin-right: .8rem;
          }
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-nav .nav-item .nav-link i {
          font-size: 1.25rem;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-settings {
          padding-left: 20px;
          padding-right: 5px;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-settings .nav-link {
          margin-right: 0;
          margin-left: 0;
        }

        .navbar.default-layout-navbar .navbar-menu-wrapper .dropdown-menu {
          border: none;
          border-radius: 5px;
          -webkit-box-shadow: 0px 3px 21px 0px rgba(0, 0, 0, 0.2);
          -moz-box-shadow: 0px 3px 21px 0px rgba(0, 0, 0, 0.2);
          box-shadow: 0px 3px 21px 0px rgba(0, 0, 0, 0.2);
        }

        .navbar.horizontal-boxed-layout-navbar {
          background: #f6f8fa;
          padding-left: 0;
          padding-right: 0;
        }

        @media (max-width: 991px) {
          .navbar.horizontal-boxed-layout-navbar {
            padding-left: 2rem;
            padding-right: 2rem;
          }
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-brand.brand-logo img {
          width: 180px;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-brand.brand-logo-mini img {
          width: 40px;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item {
          margin-right: 1rem;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item .nav-link {
          color: #9c9fa6;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item:not(.nav-search):not(.nav-profile) .nav-link {
          background: #ffffff;
          border: 1px solid #ebedf2;
          width: 42px;
          height: 42px;
          text-align: center;
          padding: 0;
          border-radius: 50px;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item:not(.nav-search):not(.nav-profile) .nav-link i {
          font-size: 1.25rem;
          line-height: 42px;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item.nav-search .search-field {
          border-radius: 50px;
          border: 1px solid #ebedf2;
          background: #ffffff;
          height: 42px;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item.nav-search .search-field .input-group-text,
        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item.nav-search .search-field .form-control,
        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item.nav-search .search-field .input-group-prepend {
          border: 0;
          background: transparent;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item.nav-search .search-field .input-group-text {
          padding-left: 1rem;
          padding-right: 1rem;
          font-size: 1.25rem;
          color: #9c9fa6;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item.nav-profile {
          margin-left: 5rem;
          margin-right: 0;
        }

        @media (max-width: 991px) {
          .navbar.horizontal-boxed-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav-right .nav-item.nav-profile {
            margin-left: 0;
          }
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-middle {
          margin-top: .125rem;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-middle .nav-pills {
          padding-bottom: .5rem;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-middle .nav-pills .nav-item {
          margin-right: 10px;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-middle .nav-pills .nav-item .nav-link {
          padding: 1rem 1.25rem;
          color: #9c9fa6;
          background: #ffffff;
          border-radius: 6px;
          line-height: 1;
          font-family: "ubuntu-bold", sans-serif;
        }

        @media (max-width: 991px) {
          .navbar.horizontal-boxed-layout-navbar .navbar-middle .nav-pills .nav-item .nav-link {
            border-radius: 0;
          }
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-middle .nav-pills .nav-item .nav-link.active {
          background: linear-gradient(to right, #da8cff, #9a55ff);
          box-shadow: 0px 3px 8.3px 0.7px rgba(163, 93, 255, 0.35);
          color: #ffffff;
          border: 0;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-middle .navbar-nav .nav-item {
          margin-left: 2rem;
        }

        @media (max-width: 991px) {
          .navbar.horizontal-boxed-layout-navbar .navbar-middle .navbar-nav .nav-item {
            margin-left: 1rem;
          }
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-bottom {
          background: linear-gradient(to right, #da8cff, #9a55ff);
          box-shadow: 0px 3px 8.3px 0.7px rgba(163, 93, 255, 0.35);
          padding: .5rem 1rem;
          border-radius: 6px;
        }

        @media (max-width: 991px) {
          .navbar.horizontal-boxed-layout-navbar .navbar-bottom .navbar-nav {
            display: block;
          }
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-bottom .navbar-nav .nav-item {
          margin-left: 1rem;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-bottom .navbar-nav .nav-item .nav-link {
          color: #ffffff;
          padding: .75rem 1rem;
          line-height: 1;
        }

        .navbar.horizontal-boxed-layout-navbar .navbar-bottom .navbar-nav .nav-item .nav-link i {
          margin-right: 1rem;
        }

        .navbar.horizontal-full-width-layout-navbar {
          background: #ffffff;
          padding: 0;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-brand-wrapper,
        .navbar.horizontal-full-width-layout-navbar .page-title-wrapper {
          width: 220px;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top,
        .navbar.horizontal-full-width-layout-navbar .navbar-bottom {
          padding-left: 3.5rem;
          padding-right: 3.5rem;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top {
          border-bottom: 1px solid #ebedf2;
          padding-top: 0;
          padding-bottom: 0;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-brand img {
          width: 140px;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-brand.brand-logo-mini img {
          width: 40px;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav {
          margin-bottom: 0;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav .nav-item .nav-link {
          color: #9c9fa6;
          font-family: "ubuntu-bold", sans-serif;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav .nav-item .nav-link.active {
          color: #000;
          border-bottom: 2px solid #b66dff;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .dropdown-menu {
          margin-top: 0;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav.navbar-nav-left .nav-item .nav-link {
          padding: 1.5rem 1rem;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav.navbar-nav-right .nav-item {
          margin-right: 2rem;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-nav.navbar-nav-right .nav-item.nav-profile {
          margin-right: 0;
          padding-left: 3rem;
          border-left: 1px solid #ebedf2;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom {
          padding-top: 1rem;
          padding-bottom: 1rem;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav.navbar-nav-left .nav-item {
          margin-left: 1rem;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav.navbar-nav-left .nav-item .nav-link {
          color: #9c9fa6;
          padding: .75rem 1rem;
          line-height: 1;
          font-family: "ubuntu-bold", sans-serif;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav.navbar-nav-left .nav-item .nav-link i {
          margin-right: 1rem;
          color: #b66dff;
          font-size: 1.125rem;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav.navbar-nav-left .nav-item .nav-link.active {
          color: #000;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search {
          margin-right: 1rem;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search .search-field .input-group-text,
        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search .search-field input {
          border: 0;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search .search-field .input-group-text {
          font-size: 1.25rem;
          color: #9c9fa6;
          background: transparent;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search .search-field input {
          padding-left: 0;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search .search-field input:-ms-input-placeholder {
          font-size: .875rem;
          color: #9c9fa6;
          font-family: "ubuntu-regular", sans-serif;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search .search-field input:-moz-placeholder {
          font-size: .875rem;
          color: #9c9fa6;
          font-family: "ubuntu-regular", sans-serif;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search .search-field input::-moz-placeholder {
          font-size: .875rem;
          color: #9c9fa6;
          font-family: "ubuntu-regular", sans-serif;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav .nav-item.nav-search .search-field input::-webkit-input-placeholder {
          font-size: .875rem;
          color: #9c9fa6;
          font-family: "ubuntu-regular", sans-serif;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-nav.navbar-nav-right .nav-item .nav-link {
          padding-top: 0;
          padding-bottom: 0;
        }

        .navbar.horizontal-full-width-layout-navbar .navbar-bottom .page-title-wrapper {
          border-right: 1px solid #ebedf2;
        }

        @media (max-width: 991px) {
          .navbar {
            flex-direction: row;
          }
          .navbar .navbar-brand-wrapper {
            width: 75px;
          }
          .navbar .navbar-brand-wrapper .navbar-brand.brand-logo {
            display: none;
          }
          .navbar .navbar-brand-wrapper .navbar-brand.brand-logo-mini {
            display: inline-block;
          }
          .navbar-collapse {
            display: flex;
            margin-top: 0.5rem;
          }
        }

        @media (max-width: 480px) {
          .navbar .navbar-brand-wrapper {
            width: 55px;
          }
          .navbar .navbar-brand-wrapper .brand-logo-mini {
            padding-top: 0px;
          }
        }

        /* Style for rendering off-canvas menu in mobile and tablet */
        @media (max-width: 991px) {
          .navbar.horizontal-boxed-layout-navbar .navbar-collapse {
            position: absolute;
            right: 0;
            width: 50%;
          }
          .navbar.horizontal-boxed-layout-navbar .navbar-collapse .nav-item .dropdown-menu.navbar-dropdown {
            position: static;
            float: none;
            margin-top: 0;
            -webkit-animation: none;
            -moz-animation: none;
            -ms-animation: none;
            -o-animation: none;
            animation: none;
          }
          .navbar.horizontal-boxed-layout-navbar .navbar-collapse.collapsing, .navbar.horizontal-boxed-layout-navbar .navbar-collapse.show {
            display: block;
          }
          .navbar.horizontal-boxed-layout-navbar .navbar-collapse.navbar-bottom {
            top: 120px;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-top,
          .navbar.horizontal-full-width-layout-navbar .navbar-bottom {
            padding-left: 1rem;
            padding-right: 1rem;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-collapse {
            z-index: 1;
            position: absolute;
            right: 0;
            background: #ffffff;
            top: 60px;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-collapse.collapsing, .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-collapse.show {
            display: block;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-collapse .nav-item .nav-link {
            width: 100%;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-top .navbar-menu-wrapper .navbar-collapse .nav-item .nav-link.active {
            border-bottom: 0;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-collapse {
            position: absolute;
            background: white;
            top: 120px;
            right: 0;
            width: 50%;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-collapse.collapsing, .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-collapse.show {
            display: block;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-collapse.navbar-nav-left .nav-item {
            margin-left: 0;
          }
          .navbar.horizontal-full-width-layout-navbar .navbar-bottom .navbar-collapse.navbar-nav-left .nav-item .nav-link {
            padding: 1.25rem 1.5rem;
          }
        }

        /* Typography */
        body {
          font-size: 1rem;
          font-family: "ubuntu-regular", sans-serif;
          font-weight: initial;
          line-height: normal;
          -webkit-font-smoothing: antialiased;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        .h1,
        .h2,
        .h3,
        .h4,
        .h5,
        .h6 {
          font-family: "ubuntu-medium", sans-serif;
        }

        p {
          font-size: 0.875rem;
        }

        h1,
        .h1 {
          font-size: 2.19rem;
        }

        h2,
        .h2 {
          font-size: 1.88rem;
        }

        h3,
        .h3 {
          font-size: 1.56rem;
        }

        h4,
        .h4 {
          font-size: 1.13rem;
        }

        h5,
        .h5 {
          font-size: 1rem;
        }

        h6,
        .h6 {
          font-size: .9375rem;
        }

        p {
          font-size: .9375rem;
          line-height: 1.5;
        }

        .display-1 {
          font-size: 3.75rem;
        }

        @media (max-width: 991px) {
          .display-1 {
            font-size: 3rem;
          }
        }

        .display-2 {
          font-size: 3.125rem;
        }

        @media (max-width: 991px) {
          .display-2 {
            font-size: 2.5rem;
          }
        }

        .display-3 {
          font-size: 2.5rem;
        }

        @media (max-width: 991px) {
          .display-3 {
            font-size: 2rem;
          }
        }

        .display-4 {
          font-size: 1.875rem;
        }

        @media (max-width: 991px) {
          .display-4 {
            font-size: 1.5rem;
          }
        }

        .display-5 {
          font-size: 1.25rem;
        }

        @media (max-width: 991px) {
          .display-5 {
            font-size: 1rem;
          }
        }

        .blockquote {
          padding: 1.25rem;
          border: 1px solid #ebedf2;
        }

        address p {
          margin-bottom: 0;
        }

        .blockquote-primary {
          border-color: #b66dff;
        }

        .blockquote-primary .blockquote-footer {
          color: #b66dff;
        }

        .blockquote-secondary {
          border-color: #d8d8d8;
        }

        .blockquote-secondary .blockquote-footer {
          color: #d8d8d8;
        }

        .blockquote-success {
          border-color: #1bcfb4;
        }

        .blockquote-success .blockquote-footer {
          color: #1bcfb4;
        }

        .blockquote-info {
          border-color: #198ae3;
        }

        .blockquote-info .blockquote-footer {
          color: #198ae3;
        }

        .blockquote-warning {
          border-color: #fed713;
        }

        .blockquote-warning .blockquote-footer {
          color: #fed713;
        }

        .blockquote-danger {
          border-color: #fe7c96;
        }

        .blockquote-danger .blockquote-footer {
          color: #fe7c96;
        }

        .blockquote-light {
          border-color: #f8f9fa;
        }

        .blockquote-light .blockquote-footer {
          color: #f8f9fa;
        }

        .blockquote-dark {
          border-color: #3e4b5b;
        }

        .blockquote-dark .blockquote-footer {
          color: #3e4b5b;
        }

        .error-page h1 {
          font-size: 12rem;
        }

        @media (max-width: 991px) {
          .error-page h1 {
            font-size: 8rem;
          }
        }

        .icon-lg {
          font-size: 3.438rem;
        }

        .icon-md {
          font-size: 1.875rem;
        }

        .icon-sm {
          font-size: 1rem;
        }

        /* Miscellanoeous */
        body,
        html {
          overflow-x: hidden;
          padding-right: 0 !important;
        }

        *:-moz-full-screen,
        *:-webkit-full-screen,
        *:fullscreen *:-ms-fullscreen {
          overflow: auto;
        }

        .page-body-wrapper {
          min-height: calc(100vh - 70px);
          display: -webkit-flex;
          display: flex;
          -webkit-flex-direction: row;
          flex-direction: row;
          padding-left: 0;
          padding-right: 0;
          padding-top: 70px;
        }

        .page-body-wrapper.full-page-wrapper {
          width: 100%;
          min-height: 100vh;
          padding-top: 0;
        }

        .main-panel {
          transition: width 0.25s ease, margin 0.25s ease;
          width: calc(100% - 260px);
          min-height: calc(100vh - 70px);
          display: -webkit-flex;
          display: flex;
          -webkit-flex-direction: column;
          flex-direction: column;
        }

        @media (max-width: 991px) {
          .main-panel {
            margin-left: 0;
            width: 100%;
          }
        }

        .content-wrapper {
          background: #f2edf3;
          padding: 2.75rem 2.25rem;
          width: 100%;
          -webkit-flex-grow: 1;
          flex-grow: 1;
        }

        .container-scroller {
          overflow: hidden;
        }

        pre {
          background: #e8eff4;
          padding: 15px;
          font-size: 14px;
        }

        code {
          padding: 5px;
          color: #fe7c96;
          font-family: "ubuntu-light", sans-serif;
          font-size: 0.875rem;
          border-radius: 4px;
        }

        .page-header {
          margin: 0 0 1.5rem 0;
        }

        .page-header .breadcrumb {
          border: 0;
          margin-bottom: 0;
        }

        .page-title {
          color: #000;
          font-size: 1.125rem;
          margin-bottom: 0;
        }

        .page-title .page-title-icon {
          display: inline-block;
          width: 36px;
          height: 36px;
          border-radius: 4px;
          text-align: center;
          box-shadow: 0px 3px 8.3px 0.7px rgba(163, 93, 255, 0.35);
        }

        .page-title .page-title-icon i {
          font-size: .9375rem;
          line-height: 36px;
        }

        /* Footer */
        .footer {
          background: #f2edf3;
          padding: 30px 1rem;
          transition: all 0.25s ease;
          -moz-transition: all 0.25s ease;
          -webkit-transition: all 0.25s ease;
          -ms-transition: all 0.25s ease;
          font-size: calc(0.875rem - 0.05rem);
          font-family: "ubuntu-regular", sans-serif;
          border-top: 1px solid #dccedf;
        }

        .footer a {
          color: #1bcfb4;
          font-size: inherit;
        }

        @media (max-width: 991px) {
          .footer {
            margin-left: 0;
            width: 100%;
          }
        }

        /* Utilities */
        .grid-margin, .purchase-popup {
          margin-bottom: 2.5rem;
        }

        @media (min-width: 576px) {
          .grid-margin-sm-0 {
            margin-bottom: 0;
          }
        }

        @media (min-width: 768px) {
          .grid-margin-md-0 {
            margin-bottom: 0;
          }
        }

        @media (min-width: 992px) {
          .grid-margin-lg-0 {
            margin-bottom: 0;
          }
        }

        @media (min-width: 1200px) {
          .grid-margin-xl-0 {
            margin-bottom: 0;
          }
        }

        .img-lg {
          width: 92px;
          height: 92px;
        }

        .img-sm {
          width: 43px;
          height: 43px;
        }

        .img-xs {
          width: 37px;
          height: 37px;
        }

        .img-ss {
          width: 26px;
          height: 26px;
        }

        .stretch-card {
          display: -webkit-flex;
          display: flex;
          -webkit-align-items: stretch;
          align-items: stretch;
          -webkit-justify-content: stretch;
          justify-content: stretch;
        }

        .stretch-card > .card {
          width: 100%;
          min-width: 100%;
        }

        @media (min-width: 576px) {
          .border-right-sm {
            border-right: 1px solid #ebedf2;
          }
        }

        @media (min-width: 768px) {
          .border-right-md {
            border-right: 1px solid #ebedf2;
          }
        }

        @media (min-width: 992px) {
          .border-right-lg {
            border-right: 1px solid #ebedf2;
          }
        }

        @media (min-width: 576px) {
          .border-left-sm {
            border-left: 1px solid #ebedf2;
          }
        }

        @media (min-width: 768px) {
          .border-left-md {
            border-left: 1px solid #ebedf2;
          }
        }

        @media (min-width: 992px) {
          .border-left-lg {
            border-left: 1px solid #ebedf2;
          }
        }

        .text-gray, .card .card-subtitle {
          color: #8c8c8c;
        }

        .text-black {
          color: #000;
        }

        .text-small {
          font-size: 12px;
        }

        .flex-grow {
          flex-grow: 1;
        }

        .font-weight-light {
          font-family: "ubuntu-light", sans-serif;
        }

        .font-weight-bold {
          font-family: "ubuntu-bold", sans-serif;
        }

        .font-weight-normal {
          font-family: "ubuntu-regular", sans-serif;
        }

        /* Demo Styles */
        .template-demo > h2,
        .template-demo > h3,
        .template-demo > h4,
        .template-demo > h5,
        .template-demo > h6,
        .template-demo > h1 {
          border-top: 1px solid #ebedf2;
          padding: 0.5rem 0 0;
        }

        .template-demo > .dropdown {
          display: inline-block;
          margin-bottom: 0.5rem;
        }

        .template-demo nav .breadcrumb {
          margin-bottom: 1.375rem;
        }

        .template-demo nav:last-child .breadcrumb {
          margin-bottom: 0;
        }

        .dropdown-menu-static-demo {
          height: 250px;
          margin-bottom: 20px;
        }

        .rounded-legend ul li {
          list-style-type: none;
          color: #9c9fa6;
          font-size: .75rem;
        }

        .rounded-legend ul li .legend-dots {
          width: 1rem;
          height: 1rem;
          border-radius: 100%;
          display: inline-block;
          vertical-align: text-bottom;
          margin-right: .5rem;
        }

        .rtl .rounded-legend ul li .legend-dots {
          margin-left: .5rem;
        }

        .rounded-legend.legend-horizontal {
          display: -webkit-flex;
          display: flex;
        }

        .rounded-legend.legend-horizontal ul li {
          display: inline-block;
          margin-right: 1.5rem;
        }

        .rtl .rounded-legend.legend-horizontal ul li {
          margin-right: auto;
          margin-left: 1.5rem;
        }

        .rounded-legend.legend-top-right ul {
          float: right;
        }

        .rtl .rounded-legend.legend-top-right ul {
          float: left;
        }

        .rounded-legend.legend-vertical ul li {
          margin-top: 1rem;
        }

        .purchase-popup {
          background: rgba(191, 187, 187, 0.46);
          padding: 15px 20px;
          border-radius: 3px;
        }

        .purchase-popup .btn {
          margin-right: 20px;
          font-weight: 500;
          color: #ffffff;
          border-radius: 5px;
          -webkit-transition-duration: 0.2s;
          -moz-transition-duration: 0.2s;
          -o-transition-duration: 0.2s;
          transition-duration: 0.2s;
        }

        .purchase-popup .btn.download-button {
          background: rgba(249, 249, 249, 0.7);
          color: #969292;
          border: 1px solid #cbcbcb;
        }

        .purchase-popup .btn.purchase-button {
          background-color: rgba(172, 50, 228, 0.9);
          background-image: -owg-linear-gradient(to right, #da8cff, #9a55ff);
          background-image: -webkit-linear-gradient(to right, #da8cff, #9a55ff);
          background-image: -moz-linear-gradient(to right, #da8cff, #9a55ff);
          background-image: -o-linear-gradient(to right, #da8cff, #9a55ff);
          background-image: linear-gradient(to right, #da8cff, #9a55ff);
          color: #ffffff;
          border: none;
          line-height: 1;
          vertical-align: middle;
        }

        .purchase-popup p {
          margin-bottom: auto;
          margin-top: auto;
          color: #7e7e7e;
          font-weight: 400;
          vertical-align: middle;
          line-height: 1;
        }

        .purchase-popup i {
          vertical-align: middle;
          line-height: 1;
          margin: auto 0;
          color: #b1b1b1;
        }

        /*-------------------------------------------------------------------*/
        /* === Components === */
        /* Badges */
        .badge {
          border-radius: .125rem;
          font-size: 11px;
          font-weight: initial;
          line-height: 1;
          padding: .375rem .5625rem;
          font-family: "ubuntu-medium", sans-serif;
        }

        .badge.badge-pill {
          border-radius: 10rem;
        }

        /*Badge variations*/
        .badge-primary {
          border: 1px solid #b66dff;
          color: #ffffff;
        }

        .badge-secondary {
          border: 1px solid #d8d8d8;
          color: #ffffff;
        }

        .badge-success, .preview-list .preview-item .preview-thumbnail .badge.badge-online {
          border: 1px solid #1bcfb4;
          color: #ffffff;
        }

        .badge-info, .preview-list .preview-item .preview-thumbnail .badge.badge-offline {
          border: 1px solid #198ae3;
          color: #ffffff;
        }

        .badge-warning, .preview-list .preview-item .preview-thumbnail .badge.badge-busy {
          border: 1px solid #fed713;
          color: #ffffff;
        }

        .badge-danger {
          border: 1px solid #fe7c96;
          color: #ffffff;
        }

        .badge-light {
          border: 1px solid #f8f9fa;
          color: #ffffff;
        }

        .badge-dark {
          border: 1px solid #3e4b5b;
          color: #ffffff;
        }

        /*Badge gradient variations*/
        .badge-gradient-primary {
          background: linear-gradient(to right, #da8cff, #9a55ff);
          color: #ffffff;
        }

        .badge-gradient-secondary {
          background: linear-gradient(to right, #e7ebf0, #868e96);
          color: #ffffff;
        }

        .badge-gradient-success {
          background: linear-gradient(to right, #84d9d2, #07cdae);
          color: #ffffff;
        }

        .badge-gradient-info {
          background: linear-gradient(to right, #90caf9, #047edf 99%);
          color: #ffffff;
        }

        .badge-gradient-warning {
          background: linear-gradient(to right, #f6e384, #ffd500);
          color: #ffffff;
        }

        .badge-gradient-danger {
          background: linear-gradient(to right, #ffbf96, #fe7096);
          color: #ffffff;
        }

        .badge-gradient-light {
          background: linear-gradient(to bottom, #f4f4f4, #e4e4e9);
          color: #ffffff;
        }

        .badge-gradient-dark {
          background: linear-gradient(89deg, #5e7188, #3e4b5b);
          color: #ffffff;
        }

        .badge-gradient-dark-font-white {
          background: linear-gradient(89deg, #5e7188, #3e4b5b);
          color: #ffffff;
        }

        .badge-gradient-dark-font-green {
          background: linear-gradient(89deg, #00cc00, #006600);
          color: #ffffff;
        }

        .badge-gradient-dark-font-red {
          background: linear-gradient(89deg, #cc0000, #800000);
          color: #ffffff;
        }

        /*Badge outlined variations*/
        .badge-outline-primary {
          color: #b66dff;
          border: 1px solid #b66dff;
        }

        .badge-outline-secondary {
          color: #d8d8d8;
          border: 1px solid #d8d8d8;
        }

        .badge-outline-success {
          color: #1bcfb4;
          border: 1px solid #1bcfb4;
        }

        .badge-outline-info {
          color: #198ae3;
          border: 1px solid #198ae3;
        }

        .badge-outline-warning {
          color: #fed713;
          border: 1px solid #fed713;
        }

        .badge-outline-danger {
          color: #fe7c96;
          border: 1px solid #fe7c96;
        }

        .badge-outline-light {
          color: #f8f9fa;
          border: 1px solid #f8f9fa;
        }

        .badge-outline-dark {
          color: #3e4b5b;
          border: 1px solid #3e4b5b;
        }

        /* Bootstrap Progress */
        .progress {
          border-radius: 4px;
          height: 10px;
          border: solid 0.5px;
        }

        .progress .progress-bar {
          border-radius: 3px;
        }

        .progress.progress-sm {
          height: 0.375rem;
        }

        .progress.progress-md {
          height: 8px;
        }

        .progress.progress-lg {
          height: 15px;
        }

        .progress.progress-xl {
          height: 18px;
        }

        /* Buttons */
        .btn {
          font-size: 0.875rem;
          line-height: 1;
          font-family: "ubuntu-bold", sans-serif;
          /* Buttons with only icons */
          /* Buttons with icon and text */
        }

        .btn i {
          font-size: 1rem;
        }

        .btn.btn-rounded {
          border-radius: 50px;
        }

        .btn.btn-fw {
          min-width: 150px;
        }

        .btn.btn-sm, .btn-group-sm > .btn {
          font-size: 0.875rem;
        }

        .btn.btn-lg, .btn-group-lg > .btn {
          font-size: 0.875rem;
        }

        .btn.btn-xs {
          padding: 0.5rem 0.75rem;
          font-size: 0.625rem;
        }

        .btn.btn-icon {
          width: 42px;
          height: 42px;
          padding: 0;
        }

        .btn.btn-icon-text .btn-icon-prepend {
          margin-right: .5rem;
        }

        .btn.btn-icon-text .btn-icon-append {
          margin-left: .5rem;
        }

        .btn.btn-social-icon {
          width: 50px;
          height: 50px;
          padding: 0;
        }

        .btn-group .btn + .btn {
          border-left: 0;
        }

        /*social buttons*/
        .btn-twitter {
          background: #2caae1;
          color: #ffffff;
        }

        .btn-twitter:hover, .btn-twitter:focus {
          background: #1b8dbf;
          color: #ffffff;
        }

        .btn-twitter.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #59bce7;
        }

        .btn-twitter.btn-social-icon-text i {
          background: #2caae1;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-twitter {
          border: 1px solid #2caae1;
          color: #2caae1;
        }

        .btn-outline-twitter:hover {
          background: #2caae1;
          color: #ffffff;
        }

        .btn-facebook {
          background: #3b579d;
          color: #ffffff;
        }

        .btn-facebook:hover, .btn-facebook:focus {
          background: #2d4278;
          color: #ffffff;
        }

        .btn-facebook.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #4e6ebd;
        }

        .btn-facebook.btn-social-icon-text i {
          background: #3b579d;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-facebook {
          border: 1px solid #3b579d;
          color: #3b579d;
        }

        .btn-outline-facebook:hover {
          background: #3b579d;
          color: #ffffff;
        }

        .btn-google {
          background: #dc4a38;
          color: #ffffff;
        }

        .btn-google:hover, .btn-google:focus {
          background: #bf3322;
          color: #ffffff;
        }

        .btn-google.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #e47163;
        }

        .btn-google.btn-social-icon-text i {
          background: #dc4a38;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-google {
          border: 1px solid #dc4a38;
          color: #dc4a38;
        }

        .btn-outline-google:hover {
          background: #dc4a38;
          color: #ffffff;
        }

        .btn-linkedin {
          background: #0177b5;
          color: #ffffff;
        }

        .btn-linkedin:hover, .btn-linkedin:focus {
          background: #015682;
          color: #ffffff;
        }

        .btn-linkedin.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #0198e8;
        }

        .btn-linkedin.btn-social-icon-text i {
          background: #0177b5;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-linkedin {
          border: 1px solid #0177b5;
          color: #0177b5;
        }

        .btn-outline-linkedin:hover {
          background: #0177b5;
          color: #ffffff;
        }

        .btn-pinterest {
          background: #cc2127;
          color: #ffffff;
        }

        .btn-pinterest:hover, .btn-pinterest:focus {
          background: #a01a1f;
          color: #ffffff;
        }

        .btn-pinterest.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #e04046;
        }

        .btn-pinterest.btn-social-icon-text i {
          background: #cc2127;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-pinterest {
          border: 1px solid #cc2127;
          color: #cc2127;
        }

        .btn-outline-pinterest:hover {
          background: #cc2127;
          color: #ffffff;
        }

        .btn-youtube {
          background: #e52d27;
          color: #ffffff;
        }

        .btn-youtube:hover, .btn-youtube:focus {
          background: #c21d17;
          color: #ffffff;
        }

        .btn-youtube.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #ea5955;
        }

        .btn-youtube.btn-social-icon-text i {
          background: #e52d27;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-youtube {
          border: 1px solid #e52d27;
          color: #e52d27;
        }

        .btn-outline-youtube:hover {
          background: #e52d27;
          color: #ffffff;
        }

        .btn-github {
          background: #333333;
          color: #ffffff;
        }

        .btn-github:hover, .btn-github:focus {
          background: #1a1a1a;
          color: #ffffff;
        }

        .btn-github.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #4d4d4d;
        }

        .btn-github.btn-social-icon-text i {
          background: #333333;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-github {
          border: 1px solid #333333;
          color: #333333;
        }

        .btn-outline-github:hover {
          background: #333333;
          color: #ffffff;
        }

        .btn-behance {
          background: #1769ff;
          color: #ffffff;
        }

        .btn-behance:hover, .btn-behance:focus {
          background: #0050e3;
          color: #ffffff;
        }

        .btn-behance.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #4a8aff;
        }

        .btn-behance.btn-social-icon-text i {
          background: #1769ff;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-behance {
          border: 1px solid #1769ff;
          color: #1769ff;
        }

        .btn-outline-behance:hover {
          background: #1769ff;
          color: #ffffff;
        }

        .btn-dribbble {
          background: #ea4c89;
          color: #ffffff;
        }

        .btn-dribbble:hover, .btn-dribbble:focus {
          background: #e51e6b;
          color: #ffffff;
        }

        .btn-dribbble.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #ef7aa7;
        }

        .btn-dribbble.btn-social-icon-text i {
          background: #ea4c89;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-dribbble {
          border: 1px solid #ea4c89;
          color: #ea4c89;
        }

        .btn-outline-dribbble:hover {
          background: #ea4c89;
          color: #ffffff;
        }

        .btn-reddit {
          background: #ff4500;
          color: #ffffff;
        }

        .btn-reddit:hover, .btn-reddit:focus {
          background: #cc3700;
          color: #ffffff;
        }

        .btn-reddit.btn-social-icon-text {
          padding: 0 1.5rem 0 0;
          background: #ff6a33;
        }

        .btn-reddit.btn-social-icon-text i {
          background: #ff4500;
          padding: .75rem;
          display: inline-block;
          margin-right: 1.5rem;
        }

        .btn-outline-reddit {
          border: 1px solid #ff4500;
          color: #ff4500;
        }

        .btn-outline-reddit:hover {
          background: #ff4500;
          color: #ffffff;
        }

        /* inverse buttons */
        .btn-inverse-primary {
          background-color: rgba(182, 109, 255, 0.2);
          background-image: none;
          border-color: rgba(182, 109, 255, 0);
        }

        .btn-inverse-primary:not(.btn-inverse-light) {
          color: #b66dff;
        }

        .btn-inverse-primary:hover {
          color: #ffffff;
          background-color: #b66dff;
          border-color: #b66dff;
        }

        .btn-inverse-primary.focus, .btn-inverse-primary:focus {
          box-shadow: 0 0 0 3px rgba(182, 109, 255, 0.5);
        }

        .btn-inverse-primary.disabled, .btn-inverse-primary:disabled {
          color: #b66dff;
          background-color: transparent;
        }

        .btn-inverse-primary.active, .btn-inverse-primary:active,
        .show > .btn-inverse-primary.dropdown-toggle {
          color: #ffffff;
          background-color: #b66dff;
          border-color: #b66dff;
        }

        .btn-primary:not(.btn-light) {
          color: #ffffff;
        }

        .btn-primary:not(.btn-light):hover, .btn-primary:not(.btn-light):focus, .btn-primary:not(.btn-light):active {
          color: #ffffff;
        }

        .btn-primary:not(.btn-light):focus, .btn-primary:not(.btn-light):active {
          background: #b66dff;
          border-color: #b66dff;
        }

        .btn-outline-primary:hover, .btn-outline-primary:focus, .btn-outline-primary:active {
          background: linear-gradient(to right, #da8cff, #9a55ff);
          color: #ffffff;
        }

        .btn-inverse-secondary {
          background-color: rgba(216, 216, 216, 0.2);
          background-image: none;
          border-color: rgba(216, 216, 216, 0);
        }

        .btn-inverse-secondary:not(.btn-inverse-light) {
          color: #d8d8d8;
        }

        .btn-inverse-secondary:hover {
          color: #ffffff;
          background-color: #d8d8d8;
          border-color: #d8d8d8;
        }

        .btn-inverse-secondary.focus, .btn-inverse-secondary:focus {
          box-shadow: 0 0 0 3px rgba(216, 216, 216, 0.5);
        }

        .btn-inverse-secondary.disabled, .btn-inverse-secondary:disabled {
          color: #d8d8d8;
          background-color: transparent;
        }

        .btn-inverse-secondary.active, .btn-inverse-secondary:active,
        .show > .btn-inverse-secondary.dropdown-toggle {
          color: #ffffff;
          background-color: #d8d8d8;
          border-color: #d8d8d8;
        }

        .btn-secondary:not(.btn-light) {
          color: #ffffff;
        }

        .btn-secondary:not(.btn-light):hover, .btn-secondary:not(.btn-light):focus, .btn-secondary:not(.btn-light):active {
          color: #ffffff;
        }

        .btn-secondary:not(.btn-light):focus, .btn-secondary:not(.btn-light):active {
          background: #d8d8d8;
          border-color: #d8d8d8;
        }

        .btn-outline-secondary:hover, .btn-outline-secondary:focus, .btn-outline-secondary:active {
          background: linear-gradient(to right, #e7ebf0, #868e96);
          color: #ffffff;
        }

        .btn-inverse-success {
          background-color: rgba(27, 207, 180, 0.2);
          background-image: none;
          border-color: rgba(27, 207, 180, 0);
        }

        .btn-inverse-success:not(.btn-inverse-light) {
          color: #1bcfb4;
        }

        .btn-inverse-success:hover {
          color: #ffffff;
          background-color: #1bcfb4;
          border-color: #1bcfb4;
        }

        .btn-inverse-success.focus, .btn-inverse-success:focus {
          box-shadow: 0 0 0 3px rgba(27, 207, 180, 0.5);
        }

        .btn-inverse-success.disabled, .btn-inverse-success:disabled {
          color: #1bcfb4;
          background-color: transparent;
        }

        .btn-inverse-success.active, .btn-inverse-success:active,
        .show > .btn-inverse-success.dropdown-toggle {
          color: #ffffff;
          background-color: #1bcfb4;
          border-color: #1bcfb4;
        }

        .btn-success:not(.btn-light) {
          color: #ffffff;
        }

        .btn-success:not(.btn-light):hover, .btn-success:not(.btn-light):focus, .btn-success:not(.btn-light):active {
          color: #ffffff;
        }

        .btn-success:not(.btn-light):focus, .btn-success:not(.btn-light):active {
          background: #1bcfb4;
          border-color: #1bcfb4;
        }

        .btn-outline-success:hover, .btn-outline-success:focus, .btn-outline-success:active {
          background: linear-gradient(to right, #84d9d2, #07cdae);
          color: #ffffff;
        }

        .btn-inverse-info {
          background-color: rgba(25, 138, 227, 0.2);
          background-image: none;
          border-color: rgba(25, 138, 227, 0);
        }

        .btn-inverse-info:not(.btn-inverse-light) {
          color: #198ae3;
        }

        .btn-inverse-info:hover {
          color: #ffffff;
          background-color: #198ae3;
          border-color: #198ae3;
        }

        .btn-inverse-info.focus, .btn-inverse-info:focus {
          box-shadow: 0 0 0 3px rgba(25, 138, 227, 0.5);
        }

        .btn-inverse-info.disabled, .btn-inverse-info:disabled {
          color: #198ae3;
          background-color: transparent;
        }

        .btn-inverse-info.active, .btn-inverse-info:active,
        .show > .btn-inverse-info.dropdown-toggle {
          color: #ffffff;
          background-color: #198ae3;
          border-color: #198ae3;
        }

        .btn-info:not(.btn-light) {
          color: #ffffff;
        }

        .btn-info:not(.btn-light):hover, .btn-info:not(.btn-light):focus, .btn-info:not(.btn-light):active {
          color: #ffffff;
        }

        .btn-info:not(.btn-light):focus, .btn-info:not(.btn-light):active {
          background: #198ae3;
          border-color: #198ae3;
        }

        .btn-outline-info:hover, .btn-outline-info:focus, .btn-outline-info:active {
          background: linear-gradient(to right, #90caf9, #047edf 99%);
          color: #ffffff;
        }

        .btn-inverse-warning {
          background-color: rgba(254, 215, 19, 0.2);
          background-image: none;
          border-color: rgba(254, 215, 19, 0);
        }

        .btn-inverse-warning:not(.btn-inverse-light) {
          color: #fed713;
        }

        .btn-inverse-warning:hover {
          color: #ffffff;
          background-color: #fed713;
          border-color: #fed713;
        }

        .btn-inverse-warning.focus, .btn-inverse-warning:focus {
          box-shadow: 0 0 0 3px rgba(254, 215, 19, 0.5);
        }

        .btn-inverse-warning.disabled, .btn-inverse-warning:disabled {
          color: #fed713;
          background-color: transparent;
        }

        .btn-inverse-warning.active, .btn-inverse-warning:active,
        .show > .btn-inverse-warning.dropdown-toggle {
          color: #ffffff;
          background-color: #fed713;
          border-color: #fed713;
        }

        .btn-warning:not(.btn-light) {
          color: #ffffff;
        }

        .btn-warning:not(.btn-light):hover, .btn-warning:not(.btn-light):focus, .btn-warning:not(.btn-light):active {
          color: #ffffff;
        }

        .btn-warning:not(.btn-light):focus, .btn-warning:not(.btn-light):active {
          background: #fed713;
          border-color: #fed713;
        }

        .btn-outline-warning:hover, .btn-outline-warning:focus, .btn-outline-warning:active {
          background: linear-gradient(to right, #f6e384, #ffd500);
          color: #ffffff;
        }

        .btn-inverse-danger {
          background-color: rgba(254, 124, 150, 0.2);
          background-image: none;
          border-color: rgba(254, 124, 150, 0);
        }

        .btn-inverse-danger:not(.btn-inverse-light) {
          color: #fe7c96;
        }

        .btn-inverse-danger:hover {
          color: #ffffff;
          background-color: #fe7c96;
          border-color: #fe7c96;
        }

        .btn-inverse-danger.focus, .btn-inverse-danger:focus {
          box-shadow: 0 0 0 3px rgba(254, 124, 150, 0.5);
        }

        .btn-inverse-danger.disabled, .btn-inverse-danger:disabled {
          color: #fe7c96;
          background-color: transparent;
        }

        .btn-inverse-danger.active, .btn-inverse-danger:active,
        .show > .btn-inverse-danger.dropdown-toggle {
          color: #ffffff;
          background-color: #fe7c96;
          border-color: #fe7c96;
        }

        .btn-danger:not(.btn-light) {
          color: #ffffff;
        }

        .btn-danger:not(.btn-light):hover, .btn-danger:not(.btn-light):focus, .btn-danger:not(.btn-light):active {
          color: #ffffff;
        }

        .btn-danger:not(.btn-light):focus, .btn-danger:not(.btn-light):active {
          background: #fe7c96;
          border-color: #fe7c96;
        }

        .btn-outline-danger:hover, .btn-outline-danger:focus, .btn-outline-danger:active {
          background: linear-gradient(to right, #ffbf96, #fe7096);
          color: #ffffff;
        }

        .btn-inverse-light {
          background-color: rgba(248, 249, 250, 0.2);
          background-image: none;
          border-color: rgba(248, 249, 250, 0);
        }

        .btn-inverse-light:not(.btn-inverse-light) {
          color: #f8f9fa;
        }

        .btn-inverse-light:hover {
          color: #ffffff;
          background-color: #f8f9fa;
          border-color: #f8f9fa;
        }

        .btn-inverse-light.focus, .btn-inverse-light:focus {
          box-shadow: 0 0 0 3px rgba(248, 249, 250, 0.5);
        }

        .btn-inverse-light.disabled, .btn-inverse-light:disabled {
          color: #f8f9fa;
          background-color: transparent;
        }

        .btn-inverse-light.active, .btn-inverse-light:active,
        .show > .btn-inverse-light.dropdown-toggle {
          color: #ffffff;
          background-color: #f8f9fa;
          border-color: #f8f9fa;
        }

        .btn-light:not(.btn-light) {
          color: #ffffff;
        }

        .btn-light:not(.btn-light):hover, .btn-light:not(.btn-light):focus, .btn-light:not(.btn-light):active {
          color: #ffffff;
        }

        .btn-light:not(.btn-light):focus, .btn-light:not(.btn-light):active {
          background: #f8f9fa;
          border-color: #f8f9fa;
        }

        .btn-outline-light:hover, .btn-outline-light:focus, .btn-outline-light:active {
          background: linear-gradient(to bottom, #f4f4f4, #e4e4e9);
          color: #ffffff;
        }

        .btn-inverse-dark {
          background-color: rgba(62, 75, 91, 0.2);
          background-image: none;
          border-color: rgba(62, 75, 91, 0);
        }

        .btn-inverse-dark:not(.btn-inverse-light) {
          color: #3e4b5b;
        }

        .btn-inverse-dark:hover {
          color: #ffffff;
          background-color: #3e4b5b;
          border-color: #3e4b5b;
        }

        .btn-inverse-dark.focus, .btn-inverse-dark:focus {
          box-shadow: 0 0 0 3px rgba(62, 75, 91, 0.5);
        }

        .btn-inverse-dark.disabled, .btn-inverse-dark:disabled {
          color: #3e4b5b;
          background-color: transparent;
        }

        .btn-inverse-dark.active, .btn-inverse-dark:active,
        .show > .btn-inverse-dark.dropdown-toggle {
          color: #ffffff;
          background-color: #3e4b5b;
          border-color: #3e4b5b;
        }

        .btn-dark:not(.btn-light) {
          color: #ffffff;
        }

        .btn-dark:not(.btn-light):hover, .btn-dark:not(.btn-light):focus, .btn-dark:not(.btn-light):active {
          color: #ffffff;
        }

        .btn-dark:not(.btn-light):focus, .btn-dark:not(.btn-light):active {
          background: #3e4b5b;
          border-color: #3e4b5b;
        }

        .btn-outline-dark:hover, .btn-outline-dark:focus, .btn-outline-dark:active {
          background: linear-gradient(89deg, #5e7188, #3e4b5b);
          color: #ffffff;
        }

        /* gradient buttons */
        .btn-gradient-primary {
          background: linear-gradient(to right, #da8cff, #9a55ff);
          border: 0;
          -webkit-transition: opacity 0.3s ease;
          -moz-transition: opacity 0.3s ease;
          -ms-transition: opacity 0.3s ease;
          -o-transition: opacity 0.3s ease;
          transition: opacity 0.3s ease;
        }

        .btn-gradient-primary:not([disabled]):not(.disabled):active, .btn-gradient-primary:not([disabled]):not(.disabled).active,
        .show > .btn-gradient-primary.dropdown-toggle {
          background: linear-gradient(to right, #da8cff, #9a55ff);
        }

        .btn-gradient-primary:hover {
          opacity: .8;
        }

        .btn-gradient-primary:not(.btn-gradient-light) {
          color: #ffffff;
        }

        .btn-gradient-primary:not(.btn-gradient-light):hover, .btn-gradient-primary:not(.btn-gradient-light):focus, .btn-gradient-primary:not(.btn-gradient-light):active {
          color: #ffffff;
        }

        .btn-gradient-secondary {
          background: linear-gradient(to right, #e7ebf0, #868e96);
          border: 0;
          -webkit-transition: opacity 0.3s ease;
          -moz-transition: opacity 0.3s ease;
          -ms-transition: opacity 0.3s ease;
          -o-transition: opacity 0.3s ease;
          transition: opacity 0.3s ease;
        }

        .btn-gradient-secondary:not([disabled]):not(.disabled):active, .btn-gradient-secondary:not([disabled]):not(.disabled).active,
        .show > .btn-gradient-secondary.dropdown-toggle {
          background: linear-gradient(to right, #e7ebf0, #868e96);
        }

        .btn-gradient-secondary:hover {
          opacity: .8;
        }

        .btn-gradient-secondary:not(.btn-gradient-light) {
          color: #ffffff;
        }

        .btn-gradient-secondary:not(.btn-gradient-light):hover, .btn-gradient-secondary:not(.btn-gradient-light):focus, .btn-gradient-secondary:not(.btn-gradient-light):active {
          color: #ffffff;
        }

        .btn-gradient-success {
          background: linear-gradient(to right, #84d9d2, #07cdae);
          border: 0;
          -webkit-transition: opacity 0.3s ease;
          -moz-transition: opacity 0.3s ease;
          -ms-transition: opacity 0.3s ease;
          -o-transition: opacity 0.3s ease;
          transition: opacity 0.3s ease;
        }

        .btn-gradient-success:not([disabled]):not(.disabled):active, .btn-gradient-success:not([disabled]):not(.disabled).active,
        .show > .btn-gradient-success.dropdown-toggle {
          background: linear-gradient(to right, #84d9d2, #07cdae);
        }

        .btn-gradient-success:hover {
          opacity: .8;
        }

        .btn-gradient-success:not(.btn-gradient-light) {
          color: #ffffff;
        }

        .btn-gradient-success:not(.btn-gradient-light):hover, .btn-gradient-success:not(.btn-gradient-light):focus, .btn-gradient-success:not(.btn-gradient-light):active {
          color: #ffffff;
        }

        .btn-gradient-info {
          background: linear-gradient(to right, #90caf9, #047edf 99%);
          border: 0;
          -webkit-transition: opacity 0.3s ease;
          -moz-transition: opacity 0.3s ease;
          -ms-transition: opacity 0.3s ease;
          -o-transition: opacity 0.3s ease;
          transition: opacity 0.3s ease;
        }

        .btn-gradient-info:not([disabled]):not(.disabled):active, .btn-gradient-info:not([disabled]):not(.disabled).active,
        .show > .btn-gradient-info.dropdown-toggle {
          background: linear-gradient(to right, #90caf9, #047edf 99%);
        }

        .btn-gradient-info:hover {
          opacity: .8;
        }

        .btn-gradient-info:not(.btn-gradient-light) {
          color: #ffffff;
        }

        .btn-gradient-info:not(.btn-gradient-light):hover, .btn-gradient-info:not(.btn-gradient-light):focus, .btn-gradient-info:not(.btn-gradient-light):active {
          color: #ffffff;
        }

        .btn-gradient-warning {
          background: linear-gradient(to right, #f6e384, #ffd500);
          border: 0;
          -webkit-transition: opacity 0.3s ease;
          -moz-transition: opacity 0.3s ease;
          -ms-transition: opacity 0.3s ease;
          -o-transition: opacity 0.3s ease;
          transition: opacity 0.3s ease;
        }

        .btn-gradient-warning:not([disabled]):not(.disabled):active, .btn-gradient-warning:not([disabled]):not(.disabled).active,
        .show > .btn-gradient-warning.dropdown-toggle {
          background: linear-gradient(to right, #f6e384, #ffd500);
        }

        .btn-gradient-warning:hover {
          opacity: .8;
        }

        .btn-gradient-warning:not(.btn-gradient-light) {
          color: #ffffff;
        }

        .btn-gradient-warning:not(.btn-gradient-light):hover, .btn-gradient-warning:not(.btn-gradient-light):focus, .btn-gradient-warning:not(.btn-gradient-light):active {
          color: #ffffff;
        }

        .btn-gradient-danger {
          background: linear-gradient(to right, #ffbf96, #fe7096);
          border: 0;
          -webkit-transition: opacity 0.3s ease;
          -moz-transition: opacity 0.3s ease;
          -ms-transition: opacity 0.3s ease;
          -o-transition: opacity 0.3s ease;
          transition: opacity 0.3s ease;
        }

        .btn-gradient-danger:not([disabled]):not(.disabled):active, .btn-gradient-danger:not([disabled]):not(.disabled).active,
        .show > .btn-gradient-danger.dropdown-toggle {
          background: linear-gradient(to right, #ffbf96, #fe7096);
        }

        .btn-gradient-danger:hover {
          opacity: .8;
        }

        .btn-gradient-danger:not(.btn-gradient-light) {
          color: #ffffff;
        }

        .btn-gradient-danger:not(.btn-gradient-light):hover, .btn-gradient-danger:not(.btn-gradient-light):focus, .btn-gradient-danger:not(.btn-gradient-light):active {
          color: #ffffff;
        }

        .btn-gradient-light {
          background: linear-gradient(to bottom, #f4f4f4, #e4e4e9);
          border: 0;
          -webkit-transition: opacity 0.3s ease;
          -moz-transition: opacity 0.3s ease;
          -ms-transition: opacity 0.3s ease;
          -o-transition: opacity 0.3s ease;
          transition: opacity 0.3s ease;
        }

        .btn-gradient-light:not([disabled]):not(.disabled):active, .btn-gradient-light:not([disabled]):not(.disabled).active,
        .show > .btn-gradient-light.dropdown-toggle {
          background: linear-gradient(to bottom, #f4f4f4, #e4e4e9);
        }

        .btn-gradient-light:hover {
          opacity: .8;
        }

        .btn-gradient-light:not(.btn-gradient-light) {
          color: #ffffff;
        }

        .btn-gradient-light:not(.btn-gradient-light):hover, .btn-gradient-light:not(.btn-gradient-light):focus, .btn-gradient-light:not(.btn-gradient-light):active {
          color: #ffffff;
        }

        .btn-gradient-dark {
          background: linear-gradient(89deg, #5e7188, #3e4b5b);
          border: 0;
          -webkit-transition: opacity 0.3s ease;
          -moz-transition: opacity 0.3s ease;
          -ms-transition: opacity 0.3s ease;
          -o-transition: opacity 0.3s ease;
          transition: opacity 0.3s ease;
        }

        .btn-gradient-dark:not([disabled]):not(.disabled):active, .btn-gradient-dark:not([disabled]):not(.disabled).active,
        .show > .btn-gradient-dark.dropdown-toggle {
          background: linear-gradient(89deg, #5e7188, #3e4b5b);
        }

        .btn-gradient-dark:hover {
          opacity: .8;
        }

        .btn-gradient-dark:not(.btn-gradient-light) {
          color: #ffffff;
        }

        .btn-gradient-dark:not(.btn-gradient-light):hover, .btn-gradient-dark:not(.btn-gradient-light):focus, .btn-gradient-dark:not(.btn-gradient-light):active {
          color: #ffffff;
        }

        /* Cards */
        .card {
          border: 0;
        }

        .card .card-body {
          padding: 2.5rem 2.5rem;
        }

        .card .card-body + .card-body {
          padding-top: 1rem;
        }

        .card .card-title {
          color: #000;
          margin-bottom: .75rem;
          text-transform: capitalize;
          font-family: "ubuntu-medium", sans-serif;
          font-size: 1.125rem;
        }

        .card .card-subtitle {
          font-family: "ubuntu-regular", sans-serif;
          margin-top: 0.625rem;
          margin-bottom: 0.625rem;
        }

        .card .card-description {
          margin-bottom: 1.5rem;
          font-family: "ubuntu-regular", sans-serif;
          color: #76838f;
        }

        .card.card-outline-success {
          border: 1px solid #1bcfb4;
        }

        .card.card-outline-primary {
          border: 1px solid #b66dff;
        }

        .card.card-outline-warning {
          border: 1px solid #fed713;
        }

        .card.card-outline-danger {
          border: 1px solid #fe7c96;
        }

        .card.card-rounded {
          border-radius: 5px;
        }

        .card.card-faded {
          background: #b5b0b2;
          border-color: #b5b0b2;
        }

        .card.card-circle-progress {
          color: #ffffff;
          text-align: center;
        }

        .card.card-img-holder {
          position: relative;
        }

        .card.card-img-holder .card-img-absolute {
          position: absolute;
          top: 0;
          right: 0;
          height: 100%;
        }

        .card-inverse-primary {
          background: rgba(182, 109, 255, 0.2);
          border: 1px solid #a764eb;
          color: #8a53c2;
        }

        .card-inverse-secondary {
          background: rgba(216, 216, 216, 0.2);
          border: 1px solid #c7c7c7;
          color: #a4a4a4;
        }

        .card-inverse-success {
          background: rgba(27, 207, 180, 0.2);
          border: 1px solid #19bea6;
          color: #159d89;
        }

        .card-inverse-info {
          background: rgba(25, 138, 227, 0.2);
          border: 1px solid #177fd1;
          color: #1369ad;
        }

        .card-inverse-warning {
          background: rgba(254, 215, 19, 0.2);
          border: 1px solid #eac611;
          color: #c1a30e;
        }

        .card-inverse-danger {
          background: rgba(254, 124, 150, 0.2);
          border: 1px solid #ea728a;
          color: #c15e72;
        }

        .card-inverse-light {
          background: rgba(248, 249, 250, 0.2);
          border: 1px solid #e4e5e6;
          color: #bcbdbe;
        }

        .card-inverse-dark {
          background: rgba(62, 75, 91, 0.2);
          border: 1px solid #394554;
          color: #2f3945;
        }

        /* Checkboxes and Radios */
        .form-check {
          position: relative;
          display: block;
          margin-top: 15px;
          margin-bottom: 10px;
          padding-left: 0;
        }

        .form-check .form-check-label {
          display: block;
          margin-left: 1.75rem;
          font-size: 0.875rem;
          line-height: 1.5;
        }

        .rtl .form-check .form-check-label {
          margin-left: 0;
          margin-right: 1.75rem;
        }

        .form-check .form-check-label input {
          position: absolute;
          top: 0;
          left: 0;
          margin-left: 0;
          margin-top: 0;
          z-index: 1;
          cursor: pointer;
          opacity: 0;
          filter: alpha(opacity=0);
        }

        .rtl .form-check .form-check-label input {
          left: auto;
          right: 0;
        }

        .form-check .form-check-label input[type="checkbox"] + .input-helper:before, .form-check .form-check-label input[type="checkbox"] + .input-helper:after {
          position: absolute;
          top: 0;
          left: 0;
        }

        .rtl .form-check .form-check-label input[type="checkbox"] + .input-helper:before, .rtl .form-check .form-check-label input[type="checkbox"] + .input-helper:after {
          left: auto;
          right: 0;
        }

        .form-check .form-check-label input[type="checkbox"] + .input-helper:before {
          content: "";
          width: 18px;
          height: 18px;
          border-radius: 2px;
          border: solid #b66dff;
          border-width: 2px;
          -webkit-transition: all;
          -moz-transition: all;
          -ms-transition: all;
          -o-transition: all;
          transition: all;
          transition-duration: 0s;
          -webkit-transition-duration: 250ms;
          transition-duration: 250ms;
        }

        .form-check .form-check-label input[type="checkbox"] + .input-helper:after {
          -webkit-transition: all;
          -moz-transition: all;
          -ms-transition: all;
          -o-transition: all;
          transition: all;
          transition-duration: 0s;
          -webkit-transition-duration: 250ms;
          transition-duration: 250ms;
          font-family: Material Design Icons;
          opacity: 0;
          filter: alpha(opacity=0);
          -webkit-transform: scale(0);
          -ms-transform: scale(0);
          -o-transform: scale(0);
          transform: scale(0);
          content: '\F12C';
          font-size: .9375rem;
          font-weight: bold;
          color: #ffffff;
        }

        .form-check .form-check-label input[type="checkbox"]:checked + .input-helper:before {
          background: linear-gradient(to right, #da8cff, #9a55ff);
          border-width: 0;
        }

        .form-check .form-check-label input[type="checkbox"]:checked + .input-helper:after {
          width: 18px;
          opacity: 1;
          line-height: 18px;
          filter: alpha(opacity=100);
          -webkit-transform: scale(1);
          -ms-transform: scale(1);
          -o-transform: scale(1);
          transform: scale(1);
        }

        .form-check .form-check-label input[type="checkbox"]:disabled + .input-helper:before {
          border-color: #ebedf2;
        }

        .form-check .form-check-label input[type="checkbox"]:disabled:checked + .input-helper:after {
          background: #ebedf2;
          color: #ffffff;
        }

        .form-check .form-check-label input[type="radio"] + .input-helper:before {
          position: absolute;
          content: "";
          top: 0;
          left: 0;
          border: solid #b66dff;
          border-width: 2px;
          width: 20px;
          height: 20px;
          border-radius: 50%;
          -webkit-transition: all;
          -moz-transition: all;
          -ms-transition: all;
          -o-transition: all;
          transition: all;
          transition-duration: 0s;
          -webkit-transition-duration: 250ms;
          transition-duration: 250ms;
        }

        .rtl .form-check .form-check-label input[type="radio"] + .input-helper:before {
          left: auto;
          right: 0;
        }

        .form-check .form-check-label input[type="radio"] + .input-helper:after {
          content: "";
          width: 8px;
          height: 8px;
          background: #ffffff;
          border-radius: 50%;
          top: 6px;
          left: 6px;
          -webkit-transition: all;
          -o-transition: all;
          transition: all;
          transition-duration: 0s;
          -webkit-transition-duration: 250ms;
          transition-duration: 250ms;
          opacity: 0;
          filter: alpha(opacity=0);
          -webkit-transform: scale(0);
          -ms-transform: scale(0);
          -o-transform: scale(0);
          transform: scale(0);
          position: absolute;
        }

        .rtl .form-check .form-check-label input[type="radio"] + .input-helper:after {
          left: auto;
          right: 6px;
        }

        .form-check .form-check-label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(to right, #da8cff, #9a55ff);
          border-width: 0;
        }

        .form-check .form-check-label input[type="radio"]:checked + .input-helper:after {
          opacity: 1;
          line-height: 1.5;
          filter: alpha(opacity=100);
          -webkit-transform: scale(1);
          -ms-transform: scale(1);
          -o-transform: scale(1);
          transform: scale(1);
        }

        .form-check .form-check-label input[type="radio"]:disabled + .input-helper:before {
          border-color: #ebedf2;
        }

        .form-check .form-check-label input[type="radio"]:disabled:checked + .input-helper:before {
          background: #ebedf2;
        }

        .form-check .form-check-label input[type="radio"]:disabled:checked + .input-helper:after {
          background: #ffffff;
        }

        .form-check-primary.form-check label input[type="checkbox"] + .input-helper:before,
        .form-check-primary.form-check label input[type="radio"] + .input-helper:before {
          border-color: #b66dff;
        }

        .form-check-primary.form-check label input[type="checkbox"]:checked + .input-helper:before,
        .form-check-primary.form-check label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(to right, #da8cff, #9a55ff);
        }

        .form-check-secondary.form-check label input[type="checkbox"] + .input-helper:before,
        .form-check-secondary.form-check label input[type="radio"] + .input-helper:before {
          border-color: #d8d8d8;
        }

        .form-check-secondary.form-check label input[type="checkbox"]:checked + .input-helper:before,
        .form-check-secondary.form-check label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(to right, #e7ebf0, #868e96);
        }

        .form-check-success.form-check label input[type="checkbox"] + .input-helper:before,
        .form-check-success.form-check label input[type="radio"] + .input-helper:before {
          border-color: #1bcfb4;
        }

        .form-check-success.form-check label input[type="checkbox"]:checked + .input-helper:before,
        .form-check-success.form-check label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(to right, #84d9d2, #07cdae);
        }

        .form-check-info.form-check label input[type="checkbox"] + .input-helper:before,
        .form-check-info.form-check label input[type="radio"] + .input-helper:before {
          border-color: #198ae3;
        }

        .form-check-info.form-check label input[type="checkbox"]:checked + .input-helper:before,
        .form-check-info.form-check label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(to right, #90caf9, #047edf 99%);
        }

        .form-check-warning.form-check label input[type="checkbox"] + .input-helper:before,
        .form-check-warning.form-check label input[type="radio"] + .input-helper:before {
          border-color: #fed713;
        }

        .form-check-warning.form-check label input[type="checkbox"]:checked + .input-helper:before,
        .form-check-warning.form-check label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(to right, #f6e384, #ffd500);
        }

        .form-check-danger.form-check label input[type="checkbox"] + .input-helper:before,
        .form-check-danger.form-check label input[type="radio"] + .input-helper:before {
          border-color: #fe7c96;
        }

        .form-check-danger.form-check label input[type="checkbox"]:checked + .input-helper:before,
        .form-check-danger.form-check label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(to right, #ffbf96, #fe7096);
        }

        .form-check-light.form-check label input[type="checkbox"] + .input-helper:before,
        .form-check-light.form-check label input[type="radio"] + .input-helper:before {
          border-color: #f8f9fa;
        }

        .form-check-light.form-check label input[type="checkbox"]:checked + .input-helper:before,
        .form-check-light.form-check label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(to bottom, #f4f4f4, #e4e4e9);
        }

        .form-check-dark.form-check label input[type="checkbox"] + .input-helper:before,
        .form-check-dark.form-check label input[type="radio"] + .input-helper:before {
          border-color: #3e4b5b;
        }

        .form-check-dark.form-check label input[type="checkbox"]:checked + .input-helper:before,
        .form-check-dark.form-check label input[type="radio"]:checked + .input-helper:before {
          background: linear-gradient(89deg, #5e7188, #3e4b5b);
        }

        /* Dropdowns */
        .dropdown .dropdown-toggle:after {
          border-top: 0;
          border-right: 0;
          border-left: 0;
          border-bottom: 0;
          font: normal normal normal 24px/1 "Material Design Icons";
          content: "\f140";
          width: auto;
          height: auto;
          vertical-align: baseline;
          font-size: .75rem;
        }

        .dropdown .dropdown-menu {
          margin-top: 0rem;
          font-size: 1rem;
          box-shadow: 0px 1px 15px 1px rgba(230, 234, 236, 0.35);
          background: linear-gradient(to right, #da8cff, #9a55ff);
        }

        .dropdown .dropdown-menu .dropdown-item {
          font-size: 1rem;
          padding: .25rem 1.5rem;
        }

        .dropdown .dropdown-menu .dropdown-item:active {
          background: initial;
        }

        /* Forms */
        .form-group {
          margin-bottom: 1.5rem;
        }

        .input-group-append,
        .input-group-prepend {
          color: #c9c8c8;
          width: auto;
          border: none;
        }

        .input-group-append .input-group-text,
        .input-group-prepend .input-group-text {
          border-color: #ebedf2;
          padding: 0.875rem 0.75rem;
          color: #c9c8c8;
        }

        .form-control {
          border: 1px solid #ebedf2;
          font-family: "ubuntu-regular", sans-serif;
          font-size: 0.8125rem;
        }

        select.form-control {
          padding: .4375rem .75rem;
          border: 0;
          outline: 1px solid #ebedf2;
          color: #c9c8c8;
        }

        select.form-control:focus {
          outline: 1px solid #ebedf2;
        }

        select.form-control.border-primary {
          outline: 1px solid #b66dff;
        }

        select.form-control.border-primary:focus {
          outline: 1px solid #b66dff;
        }

        select.form-control.border-secondary {
          outline: 1px solid #d8d8d8;
        }

        select.form-control.border-secondary:focus {
          outline: 1px solid #d8d8d8;
        }

        select.form-control.border-success {
          outline: 1px solid #1bcfb4;
        }

        select.form-control.border-success:focus {
          outline: 1px solid #1bcfb4;
        }

        select.form-control.border-info {
          outline: 1px solid #198ae3;
        }

        select.form-control.border-info:focus {
          outline: 1px solid #198ae3;
        }

        select.form-control.border-warning {
          outline: 1px solid #fed713;
        }

        select.form-control.border-warning:focus {
          outline: 1px solid #fed713;
        }

        select.form-control.border-danger {
          outline: 1px solid #fe7c96;
        }

        select.form-control.border-danger:focus {
          outline: 1px solid #fe7c96;
        }

        select.form-control.border-light {
          outline: 1px solid #f8f9fa;
        }

        select.form-control.border-light:focus {
          outline: 1px solid #f8f9fa;
        }

        select.form-control.border-dark {
          outline: 1px solid #3e4b5b;
        }

        select.form-control.border-dark:focus {
          outline: 1px solid #3e4b5b;
        }

        .form-group label {
          font-size: 0.875rem;
          line-height: 1;
          vertical-align: top;
          margin-bottom: .5rem;
        }

        .form-group.has-danger .form-control {
          border-color: #fe7c96;
        }

        .form-group .file-upload-default {
          visibility: hidden;
          position: absolute;
        }

        .form-group .file-upload-info {
          background: transparent;
        }

        /* Icons */
        .icons-list {
          border-left: 1px solid #ebedf2;
          border-top: 1px solid #ebedf2;
          margin-left: 0;
          margin-right: 0;
        }

        .icons-list > div {
          background: #ffffff;
          border-bottom: 1px solid #ebedf2;
          border-right: 1px solid #ebedf2;
          display: -webkit-flex;
          display: flex;
          -webkit-align-items: center;
          align-items: center;
          padding: 15px 15px;
          font-family: "ubuntu-regular", sans-serif;
          font-size: 0.875rem;
        }

        .icons-list > div i {
          display: inline-block;
          font-size: 20px;
          width: 40px;
          text-align: left;
          color: #b66dff;
        }

        /* Lists */
        ul,
        ol,
        dl {
          padding-left: 1rem;
          font-size: 0.875rem;
        }

        ul li,
        ol li,
        dl li {
          line-height: 1.8;
        }

        .list-ticked,
        .list-arrow,
        .list-star {
          list-style: none;
          padding: 0;
        }

        .list-ticked li,
        .list-arrow li,
        .list-star li {
          padding-left: 1.5rem;
        }

        .list-ticked li:before,
        .list-arrow li:before,
        .list-star li:before {
          font-family: "Material Design Icons";
          margin-left: -1.5rem;
          width: 1.5rem;
          margin-right: .5rem;
        }

        .list-ticked li:before {
          content: '\F12D';
          color: #fe7c96;
        }

        .list-arrow li:before {
          content: '\F142';
          color: #1bcfb4;
        }

        .list-star li:before {
          content: '\F4CE';
          color: #fed713;
        }

        .gradient-bullet-list {
          padding-left: 0;
        }

        .rtl .gradient-bullet-list {
          padding-right: 0;
        }

        .gradient-bullet-list li {
          position: relative;
          list-style-type: none;
          padding-left: 25px;
          line-height: 1;
          padding-bottom: 25px;
        }

        .gradient-bullet-list li:before, .gradient-bullet-list li:after {
          content: "";
          position: absolute;
        }

        .gradient-bullet-list li:before {
          top: 0;
          left: 0;
          width: 15px;
          height: 15px;
          border-radius: 100%;
        }

        .gradient-bullet-list li:after {
          width: 11px;
          height: 11px;
          top: 2px;
          left: 2px;
          background: #ffffff;
          border-radius: 100%;
        }

        .gradient-bullet-list li:nth-child(1):before {
          background: linear-gradient(to right, #ffbf96, #fe7096);
        }

        .gradient-bullet-list li:nth-child(2):before {
          background: linear-gradient(to right, #90caf9, #047edf 99%);
        }

        .gradient-bullet-list li:nth-child(3):before {
          background: linear-gradient(to right, #f6e384, #ffd500);
        }

        .gradient-bullet-list li:nth-child(4):before {
          background: linear-gradient(to right, #84d9d2, #07cdae);
        }

        .gradient-bullet-list li:nth-child(5):before {
          background: linear-gradient(to right, #da8cff, #9a55ff);
        }

        /* Preview */
        .preview-list .preview-item {
          display: -webkit-flex;
          display: flex;
          -webkit-flex-direction: row;
          flex-direction: row;
          -webkit-align-items: flex-start;
          align-items: flex-start;
          padding: .75rem 1.5rem;
          font-size: .875rem;
        }

        .preview-list .preview-item:last-child {
          border-bottom: 0;
        }

        .preview-list .preview-item:hover {
          background: #f8f9fa;
        }

        .preview-list .preview-item .form-check {
          margin-top: 8px;
          margin-right: 1rem;
        }

        .preview-list .preview-item .preview-thumbnail {
          color: #ffffff;
          position: relative;
        }

        .preview-list .preview-item .preview-thumbnail img,
        .preview-list .preview-item .preview-thumbnail .preview-icon {
          width: 36px;
          height: 36px;
          border-radius: 100%;
        }

        .preview-list .preview-item .preview-thumbnail .preview-icon {
          padding: 6px;
          text-align: center;
          display: -webkit-flex;
          display: flex;
          -webkit-align-items: center;
          align-items: center;
          -webkit-justify-content: center;
          justify-content: center;
        }

        .preview-list .preview-item .preview-thumbnail .preview-icon i {
          font-size: 1.125rem;
          margin: 0;
        }

        .preview-list .preview-item .preview-thumbnail .badge {
          border: 2px solid #ffffff;
          border-radius: 100%;
          bottom: 5px;
          display: block;
          height: 14px;
          left: -5px;
          padding: 0;
          position: absolute;
          width: 14px;
        }

        .preview-list .preview-item .preview-item-content {
          line-height: 1;
          padding-left: 15px;
        }

        .preview-list .preview-item .preview-item-content:first-child {
          padding-left: 0;
        }

        .preview-list .preview-item .preview-item-content p {
          margin-bottom: 10px;
        }

        .preview-list .preview-item .preview-item-content p .content-category {
          font-family: 'source-sans-pro-semibold', sans-serif;
          padding-right: 15px;
          border-right: 1px solid #ebedf2;
        }

        .rtl .preview-list .preview-item .preview-item-content {
          padding-left: 0;
          padding-right: 1rem;
          margin-right: 0;
          margin-left: auto;
        }

        .preview-list .preview-item .preview-actions {
          display: -webkit-flex;
          display: flex;
          -webkit-flex-direction: row;
          flex-direction: row;
        }

        .preview-list .preview-item .preview-actions i {
          width: 29px;
          color: #e6e9ed;
          height: 29px;
          border: 2px solid #e6e9ed;
          border-radius: 100%;
          padding: 3px 6px;
          display: inline-block;
        }

        .preview-list .preview-item .preview-actions i:first-child {
          margin-right: 10px;
        }

        .preview-list.comment-preview .preview-item {
          padding: .87rem 0;
        }

        .preview-list.comment-preview .preview-item:first-child {
          padding-top: 0;
        }

        .preview-list.comment-preview .preview-item p {
          line-height: 27px;
        }

        .preview-list.bordered .preview-item {
          border-bottom: 1px solid #ebedf2;
        }

        .preview-list.bordered .preview-item:last-child {
          border-bottom: 0;
        }

        /* Tables */
        .table {
          margin-bottom: 0;
        }

        .table thead th {
          border-top: 0;
          border-bottom-width: 1px;
          font-family: "ubuntu-medium", sans-serif;
          font-weight: bold;
        }

        .table thead th i {
          margin-left: 0.325rem;
        }

        .table th,
        .table td {
          vertical-align: middle;
          font-size: 0.875rem;
          line-height: 1;
        }

        .table th img,
        .table td img {
          width: 36px;
          height: 36px;
          border-radius: 100%;
        }

        .table th .badge,
        .table td .badge {
          margin-bottom: 0;
        }

        .table.table-borderless {
          border: none;
        }

        .table.table-borderless tr, .table.table-borderless td, .table.table-borderless th {
          border: none;
        }

        /*-------------------------------------------------------------------*/
        /* === Landing screens === */
        /* Auth */
        .auth .auth-form-light {
          background: #ffffff;
        }

        .auth .auth-form-light select {
          color: #c9c8c8;
        }

        .auth .auth-form-light .input-group .form-control:focus, .auth .auth-form-light .input-group .form-control:active {
          border-color: #ebedf2;
        }

        .auth .brand-logo {
          margin-bottom: 2rem;
        }

        .auth .brand-logo img {
          width: 150px;
        }

        .auth form .form-group {
          margin-bottom: 1.5rem;
        }

        .auth form .form-group label {
          font-size: .8125rem;
        }

        .auth form .form-group .form-control {
          background: transparent;
          border-radius: 0;
          font-size: .9375rem;
        }

        .auth form .auth-form-btn {
          height: 50px;
          line-height: 1.5;
        }

        .auth form .auth-link {
          font-size: 0.875rem;
        }

        .auth form .auth-link:hover {
          color: initial;
        }

        .border-navbar {
            border-top: 6px solid #b22abd;
            border-bottom: 3px solid #b22abd;
            border-style: solid none outset none;
        }

        .page-header-report {
            float: left;
            width: 63%;
            margin-left: 1%;
            font-weight: 900;
            font-family: sans-serif;
            color: #b22abd;
        }

        .page-header-report-extended {
            float: left;
            width: 78%;
            margin-left: 1%;
            font-weight: 900;
            font-family: sans-serif;
            color: #b22abd;
        }

        .search-list-text {
            color: #ffffff;
        }

        .nav-buttons-with-icons {
            margin-bottom: 10px;
            border: 1px solid;
            width: 225px;
            border-radius: 13px;
        }

        .search-nav-li-border {
            border-bottom: 1px solid #ffffff;
        }

        .search-nav-li-border:hover {
            border-bottom: 1px solid #b22abd !important;;
        }

        .search-nav-cursor-pointer {
            cursor: pointer;
        }

        .search-nav-cursor-pointer:hover {
            background: #ffffff !important;
        }

        .search-nav-cursor-pointer:hover .search-list-text {
            color: #b22abd !important;
            text-decoration: none;
        }

        /*# sourceMappingURL=maps/style.css.map */

    </style>
</head>
<body>
    <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row border-navbar">
            <#if searchList?has_content>
                <h4 class="page-header-report">TEST REPORT</h4>
                <div class="search-field d-none d-md-block">
                    <div class="dropdown" style="margin-left: 10px;">
                        <button class="btn btn-block btn-lg btn-gradient-primary mt-2 nav-buttons-with-icons" type="button" data-toggle="dropdown">
                            <i style="float: left;" class="large material-icons cursor-pointer-icon color-black">search</i>
                            Click to Search</button>
                        <ul class="dropdown-menu">
                            <input style="background: #282626; color: #ffffff;" class="form-control" id="myInput" type="text" placeholder="Enter search text here ...">
                                <#list searchList as searchObject>
                                    <li class="text-center search-nav-cursor-pointer search-nav-li-border">
                                        <a class="search-list-text" href="${searchObject.url}">${searchObject.text}</a>
                                    </li>
                                </#list>
                        </ul>
                    </div>
                </div>
            <#else>
                <h4 class="page-header-report-extended">TEST REPORT</h4>
            </#if>
            <div class="search-field d-none d-md-block">
                <div class="dropdown" style="margin-left: 10px;">
                    <button id="fullscreen-button" class="nav-buttons-with-icons btn btn-block btn-lg btn-gradient-primary mt-2" type="button">
                        <i style="float: left" class="large material-icons cursor-pointer-icon color-black" >fullscreen</i>
                        Toggle Screen</button>
                </div>
            </div>
        </nav>

        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item cursor-pointer">
                        <a class="nav-link" href="${homePage}">
                            <span class="menu-title">Dashboard</span>
                            <i style="margin-left: 20px" class="material-icons">home</i>
                        </a>
                    </li>
                        <#list product.subproducts as subproduct>
                            <#if subproduct.subproducts?has_content>
                                <li class="nav-item cursor-pointer">
                                    <a class="nav-link" href="${subproduct.detailView}">
                                        <span class="menu-title">${subproduct.name}</span>
                                    </a>
                                </li>
                            </#if>
                        </#list>
                    <li class="nav-item sidebar-actions">
                        <span class="nav-link">
                            <div class="border-bottom">
                                <h4 class="mb-3">Robot Execution Data</h4>
                            </div>
                            <li class="nav-item cursor-pointer">
                                <a class="nav-link" href="robotFiles/report.html">
                                    <span class="menu-title">Report</span>
                                    <i style="margin-left: 20px" class="material-icons">receipt</i>
                                </a>
                            </li>
                            <li class="nav-item cursor-pointer">
                                <a class="nav-link" href="robotFiles/output.xml">
                                    <span class="menu-title">Output</span>
                                    <i style="margin-left: 20px" class="material-icons">reorder</i>
                                </a>
                            </li>
                            <li class="nav-item cursor-pointer">
                                <a class="nav-link" href="robotFiles/log.html">
                                    <span class="menu-title">Log</span>
                                    <i style="margin-left: 20px" class="material-icons">report</i>
                                </a>
                            </li>
                        </span>
                    </li>
                </ul>
            </nav>
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-success card-img-holder text-white">
                                <div class="card-body">
                                    <h4 class="font-weight-normal mb-3">Pass Percentage
                                        <i class="mdi mdi-diamond mdi-24px float-right"></i>
                                    </h4>
                                    <h2 class="mb-5">${product.passPercent} %</h2>
                                    <h6 class="card-text">Total tests passed : ${product.pass}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-danger card-img-holder text-white">
                                <div class="card-body">
                                    <h4 class="font-weight-normal mb-3">Fail Percentage
                                        <i class="mdi mdi-chart-line mdi-24px float-right"></i>
                                    </h4>
                                    <h2 class="mb-5">${product.failPercent} %</h2>
                                    <h6 class="card-text">Total tests failed : ${product.fail}</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 stretch-card grid-margin">
                            <div class="card bg-gradient-info card-img-holder text-white">
                                <div class="card-body">
                                    <h4 class="font-weight-normal mb-3">Total Tests Executed
                                        <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
                                    </h4>
                                    <h2 class="mb-5">${product.total}</h2>
                                    <div style="margin-top: -185px; float: right;">
                                        <canvas id="total-status-gauge" width="200" height="200"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Product Coverage</h4>
                                    <canvas id="product-coverage"></canvas>
                                    <div id="product-coverage-legend"
                                         class="rounded-legend legend-vertical legend-bottom-left pt-4"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Product Wise Breakdown</h4>
                                    <p class="card-description"></p>
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>
                                                Product
                                            </th>
                                            <th>
                                                Progress
                                            </th>
                                            <th>
                                                Pass
                                            </th>
                                            <th>
                                                Fail
                                            </th>
                                            <th>
                                                Total
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list product.subproducts as subproduct>
                                        <tr>
                                            <td class="py-1">
                                                ${subproduct.name}
                                            </td>
                                            <td>
                                                <div class="progress">
                                                    <div class="progress-bar bg-success" role="progressbar"
                                                         style="width: ${subproduct.passPercent}%;" aria-valuenow="${subproduct.passPercent}" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                            <td>
                                                ${subproduct.pass}
                                            </td>
                                            <td>
                                                ${subproduct.fail}
                                            </td>
                                            <td>
                                                ${subproduct.total}
                                            </td>
                                        </tr>
                                        </#list>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
                <footer class="footer">
                    <div class="d-sm-flex justify-content-center justify-content-sm-between">
                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Customized for Robot Test Execution</span>
                    </div>
                </footer>
                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- plugins:js -->
    <script src="dependencies/base.js"></script>
    <script src="dependencies/addons.js"></script>
    <!-- custom js for this page -->
    <script type="text/javascript">
        $(function() {
        Chart.defaults.global.legend.labels.usePointStyle = true;

        //fullscreen
            $("#fullscreen-button").on("click", function toggleFullScreen() {
              if ((document.fullScreenElement !== undefined && document.fullScreenElement === null) || (document.msFullscreenElement !== undefined && document.msFullscreenElement === null) || (document.mozFullScreen !== undefined && !document.mozFullScreen) || (document.webkitIsFullScreen !== undefined && !document.webkitIsFullScreen)) {
                if (document.documentElement.requestFullScreen) {
                  document.documentElement.requestFullScreen();
                } else if (document.documentElement.mozRequestFullScreen) {
                  document.documentElement.mozRequestFullScreen();
                } else if (document.documentElement.webkitRequestFullScreen) {
                  document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
                } else if (document.documentElement.msRequestFullscreen) {
                  document.documentElement.msRequestFullscreen();
                }
              } else {
                if (document.cancelFullScreen) {
                  document.cancelFullScreen();
                } else if (document.mozCancelFullScreen) {
                  document.mozCancelFullScreen();
                } else if (document.webkitCancelFullScreen) {
                  document.webkitCancelFullScreen();
                } else if (document.msExitFullscreen) {
                  document.msExitFullscreen();
                }
              }
            })

       /*This is Doughnut*/
           if ($("#product-coverage").length) {
             var ctx = document.getElementById('product-coverage').getContext("2d")

             <#list product.subproducts as subproduct>
            var gradientStroke${subproduct.name?replace(" ", "")?replace("-","")} = ctx.createLinearGradient(0, 0, 0, 200);
            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}.addColorStop(0, '${subproduct.firstCoverageColor}');
            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}.addColorStop(1, '${subproduct.secondCoverageColor}');
            var gradientLegend${subproduct.name?replace(" ", "")?replace("-","")} = 'linear-gradient(to right, ${subproduct.firstCoverageColor}, ${subproduct.secondCoverageColor})';

             </#list>

             var trafficChartData = {
               datasets: [{
                 data: [<#list product.subproducts as subproduct>${subproduct.total}<#sep>, </#list>],
                     backgroundColor: [
                        <#list product.subproducts as subproduct>
                            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}<#sep>,
                        </#list>
                     ],
                     hoverBackgroundColor: [
                       <#list product.subproducts as subproduct>
                            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}<#sep>,
                        </#list>
                     ],
                     borderColor: [
                       <#list product.subproducts as subproduct>
                            gradientStroke${subproduct.name?replace(" ", "")?replace("-","")}<#sep>,
                        </#list>
                     ],
                     legendColor: [
                        <#list product.subproducts as subproduct>
                            gradientLegend${subproduct.name?replace(" ", "")?replace("-","")}<#sep>,
                        </#list>
                     ]

               }],

               // These labels appear in the legend and in the tooltips when hovering different arcs
               labels: [<#list product.subproducts as subproduct>'${subproduct.name}'<#sep>, </#list>]
             };
             var trafficChartOptions = {
               responsive: true,
               animation: {
                 animateScale: true,
                 animateRotate: true
               },
               legend: false,
               legendCallback: function(chart) {
                 var text = [];
                 text.push('<ul>');
                 for (var i = 0; i < trafficChartData.datasets[0].data.length; i++) {
                     text.push('<li><span class="legend-dots" style="background:' +
                     trafficChartData.datasets[0].legendColor[i] +
                                 '"></span>');
                     if (trafficChartData.labels[i]) {
                         text.push(trafficChartData.labels[i]);
                     }
                     text.push('<span class="float-right">'+trafficChartData.datasets[0].data[i]+'</span>')
                     text.push('</li>');
                 }
                 text.push('</ul>');
                 return text.join('');
               }
             };
             var trafficChartCanvas = $("#product-coverage").get(0).getContext("2d");
             var trafficChart = new Chart(trafficChartCanvas, {
               type: 'doughnut',
               data: trafficChartData,
               options: trafficChartOptions
             });
             $("#product-coverage-legend").html(trafficChart.generateLegend());
           }
         });

    </script>
    <script type="text/javascript">

    $.fn.gauge = function(value, options) {
        return this.each(function() {

          var settings = $.extend({
            min: 0,
            max: 100,
            unit: "%",
            color: "#fffefc",
            colorAlpha: 1,
            bgcolor: "#ff0055",
            type: "default"
          }, options);

          //canvas initialization
          var ctx = this.getContext("2d");

          var W = this.width;
          var H = this.height;
          var centerW = (W/2);

          var position = 0;
          var new_position = 0;
          var difference = 0;

          var text;
          var animation_loop, redraw_loop;

          // Angle in radians = angle in degrees * PI / 180
          function radians(degrees) {
            return degrees * Math.PI / 180;
          }

          if (settings.type === "halfcircle") {
            (function() {
              function update() {
                ctx.clearRect(0, 0, W, H);

                // The gauge will be an arc
                ctx.beginPath();
                ctx.strokeStyle = settings.bgcolor;
                ctx.lineWidth = W * 0.13;
                ctx.arc(centerW, H, (centerW) - ctx.lineWidth, radians(180), radians(0), false);
                ctx.stroke();

                ctx.beginPath();
                ctx.strokeStyle = settings.color;
                ctx.lineWidth = W * 0.13;

                if (position > 0) {
                  ctx.arc(centerW, H, (centerW) - ctx.lineWidth, radians(180), radians(180 + position), false);
                  ctx.stroke();
                }

                // Add the text
                ctx.fillStyle = settings.color;
                            var fontArgs = ctx.font.split(' ');
                            ctx.font = (W*0.16) + ' ' + fontArgs[fontArgs.length - 1];
                text = value + settings.unit + ' Passed';
                // Center the text, deducting half of text width from position x
                text_width = ctx.measureText(text).width;
                ctx.fillText(text, centerW - text_width / 2, H - 10);
              }

              function draw() {
                // Cancel any animation if a new chart is requested
                if (typeof animation_loop !== undefined) clearInterval(animation_loop);

                new_position = Math.round((value / (settings.max - settings.min)) * 180);
                difference = new_position - position;
                animation_loop = setInterval(animate_to, 100 / difference);
              }

              // Make the chart move to new degrees
              function animate_to() {
                // Clear animation loop if degrees reaches the new_degrees
                if (position == new_position)
                  clearInterval(animation_loop);

                if (position < new_position)
                  position++;
                else
                  position--;

                update();
              }
              draw();
            })();
          }
        });
      };

    $(document).ready(function (){
        $("#total-status-gauge").gauge(${product.passPercent}, { type: "halfcircle"});
    });
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
          $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $(".dropdown-menu li").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          });
        });
    </script>
</body>

</html>