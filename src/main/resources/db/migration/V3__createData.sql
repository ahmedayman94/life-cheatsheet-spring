INSERT INTO public.users (first_name,last_name,email,"access",picture,is_active) VALUES
	 ('Ahmed','Moustafa','ahmedmou.194@gmail.com','admin',
	 'https://lh3.googleusercontent.com/a/AATXAJxgGz1IbqHdu_q-qIUiRvWgHQCpQ6ZbXahoMYYM=s96-c',
	 true);

INSERT INTO public.categories (title,author_id,created_at) VALUES
    ('Programming n'' stuff',1,'2022-01-09 18:32:19.623+01'),
    ('Economics & Banking',1,'2022-01-09 18:32:40.82+01');

INSERT INTO public.posts (title, "content",author_id,category_id,created_at,last_edited_at) VALUES
    (
        'Git stash only staged changes',
        '{"blocks":[{"key":"8mrv7","text":"git add <files><to> <stage>","type":"ordered-list-item","depth":0,"inlineStyleRanges":[{"offset":0,"length":27,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"9svca","text":"git stash push –keep-index","type":"ordered-list-item","depth":0,"inlineStyleRanges":[{"offset":0,"length":26,"style":"CODE"}],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'What is Total Return Swap',
        '{"blocks":[{"key":"5og2f","text":"Total return swap, which is particularly famous among hedge funds, allow the investor exposure to assets without outright owning them. For example, a hedge fund could go into a swap agreement with a bank for a given stock whereby a fixed interest is paid to the bank by the hedge fund, and the hedge fund receives any dividends to those stocks, and pays the hedge fund if the stock price increases. The reverse is true, and this is marked to market meaning that cash flows continuously, therefore hedge funds have to put up margin. It is worth noting that those positions are highly leveraged, and banks typically hedge such deals by buying the underlying asset themselves.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9h1sj","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"4t071","text":"This kind of swap is OTC (over the counter) that does not require the investors to report it to the SEC.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"6gb68","text":"For banks, those kinds of synthetic deals are attractive as they have less regulatory capital requirements than traditional margin lending.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9gae3","text":"For hedge funds, it allows them to hold positions with leverage and without their name showing up. In the famous case of Archegos, Bill Hwang, its owner, had 20 billion in holdings of stocks but under the name of Goldman Sachs, Deutsche bank, Credit Suisse therefore it allowed him to remain annonymous","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'What are derivatives',
        '{"blocks":[{"key":"arhtb","text":"Derivatives are financial securities whose value is derived from an underlying asset such as bonds and stocks. ","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"cehru","text":"The main forms of derivatives are: Swaps, Futures and Options.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'What is Interest Rate Swap',
        '{"blocks":[{"key":"3l7c8","text":"IRS is a way for business/institution to swap its loan terms from fixed to variable rate or vice versa.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"d01kj","text":"In an IRS agreement, one party pays the other a fixed rate whereas the other pays a floating rate.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"dvdds","text":"In swaps, there will always be a winner and a loser.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"f636j","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9qam7","text":"Why is it used?","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"bbkqh","text":"It allows companies to revise their debt conditions and to take advantage of current or expected future market conditions. In addition, it allows companies to pay lower interest rates for their loans. For banks as well, it allows them to hedge risks with regards to their liabilities and cash inflows (for e.g receiving fixed rate but paying floating rate carries a risk if floating rate would increase)","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'How TIPS work',
        '{"blocks":[{"key":"5niut","text":"Stands for Treasury Inflation Protected Securities, you buy TIPS at a given face value and a given coupon which pays semi-annually the interest. Then, the face value adjusts annually based on the CPI (consumer price index). Based on the CPI % change, the face value increases or decreases in value.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8jqhs","text":"At maturity, you receive back your principal either at your original investment or the higher adjusted, but never lower than your original investment in case of deflation.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Leverage Ratio',
        '{"blocks":[{"key":"70ru1","text":"Ratio of Debt to Capital.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":9,"length":4,"style":"BOLD"},{"offset":17,"length":7,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"8hh2a","text":"E.g: A bank with 10m in capital, and a total of 100m in liabilities would have a leverage of 10x1","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Testing and TDD',
        '{"blocks":[{"key":"4dhsq","text":"Testing can fall into three main layers starting from the bottom up:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"e4am6","text":"Unit testing: Testing a single function","type":"ordered-list-item","depth":0,"inlineStyleRanges":[{"offset":0,"length":13,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"3ahhc","text":"Integration testing: Testing several functions or an entire feature (what I mostly do with Angular tests)","type":"ordered-list-item","depth":0,"inlineStyleRanges":[{"offset":0,"length":19,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"9bc3q","text":"End to end testing: Things like gui tests, done by frameworks such as selenium in python.","type":"ordered-list-item","depth":0,"inlineStyleRanges":[{"offset":0,"length":18,"style":"BOLD"}],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'When does React render',
        '{"blocks":[{"key":"6vvgq","text":"When state changes","type":"ordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"fiog","text":"When prop changes","type":"ordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"6d5q1","text":"When parent renders","type":"ordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"amudg","text":"When context changes","type":"ordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Supplemental Leverage Ratio (SLR)',
        '{"blocks":[{"key":"54han","text":"Ratio of capital to total assets. It is required by banks to have a 3% (or 5% in large institutions).","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":9,"length":7,"style":"BOLD"},{"offset":20,"length":12,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"drjf1","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"176gl","text":"During the covid crisis, regulation for this ratio was modified to exclude from its assets calculation reserves and treasuries.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Liquidity Coverage Ratio (LCR)',
        '{"blocks":[{"key":"5sldg","text":"LCR is a regulatory requirement that was introduced under Basel III after the global financial crisis. It aims to have banks hold High Quality Liquid Assets (HQLA) in order to meet outgoing payments within a 30-day timeframe. The ratio acts as a stress-test metric to ensure that banks have sufficient liquidity.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"fvn4r","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"lold","text":"LCR = HQLA / net cash flow in 30 days","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Find all devices on network',
        '{"blocks":[{"key":"1f48q","text":"in command line: arp -a","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":17,"length":6,"style":"BOLD"},{"offset":17,"length":6,"style":"CODE"}],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'What is closure in Javascript',
        '{"blocks":[{"key":"28jjb","text":"Closures are functions that are bundled together with variables in its lexical scope (lexical scope is anything between curly brackets).","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"2d3u0","text":"With this, an inner function can access variables declared in the outer function (but not the other way around) and this is because Javascript will store a reference of this variable in the heap so that it is accessible when the inner function is executed.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'What is Money Market',
        '{"blocks":[{"key":"8p0n","text":"It is the market that deals with short-term debt, usually less than a year.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"4nt0h","text":"Examples of money market instruments are: treasury bills, repo, commercial paper, asset backed securities","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Shell find and replace (sed)',
        '{"blocks":[{"key":"6qde4","text":"To find and replace \"_\" with \"-\"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"al6ht","text":"echo \"Hello_World\" | sed ''s/_/-/g''","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":34,"style":"BOLD"},{"offset":0,"length":34,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"ab7rh","text":"Where s indicates find and replace","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"dbd5f","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"2tk5h","text":"Find and replace in file: sed ‘s/word1/word2/g’ input.txt","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":26,"length":31,"style":"BOLD"},{"offset":26,"length":31,"style":"CODE"}],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Docker run container from image without stopping',
        '{"blocks":[{"key":"ajdt6","text":"If you try to run a container from an image, and that image does not persist (i.e a script that finishes), then the container will exit. It becomes impossible to bash into the container and check things out (version of node for e.g).","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"567mo","text":"To remedy that, and keep the container running, do the following:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"c33qi","text":"docker run -t -d <image-id>","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":27,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"aner1","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"1rfep","text":"To bash directly into the image container:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"5e5do","text":"docker run -it <image-id> bash","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":30,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"6kg1j","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Node command to get package name and version',
        '{"blocks":[{"key":"9c2fc","text":"Package version: node -pe “require(‘./package.json’).version”","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":17,"length":44,"style":"BOLD"},{"offset":17,"length":44,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"doe60","text":"Where -p print, -e evalute. -pe print evaluate","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
     (
        'Minsky''s famous classification for firm financing',
        '{"blocks":[{"key":"ecdkp","text":"The categorizations are: Hedging, Speculative and Ponzi","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"f6d3t","text":"Hedging: A firm achieves \"hedging\" when it can pay down its interest on its debt and has remaining cash flow to pay down the principal, therefore the debt level falls with time.","type":"ordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"flvnn","text":"Speculative: A firm achieves this when it generates enough cash flow to only pay down the interest payments, but the principal debt has to be rolled over, therefore the debt level stays the same.","type":"ordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"1cjef","text":"Ponzi: A firm achieves this when it does not generate enough cash flow to pay down its interest or principal, and it needs to issue more debt to pay down its existing interest payments.","type":"ordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        2,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Angular local vs Global installation',
        '{"blocks":[{"key":"7nnhg","text":"You need to have angular installed globally to have access to commands that begin with: ng like ng build","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":88,"length":2,"style":"CODE"},{"offset":96,"length":8,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"a4n62","text":"In addition, you also need to install angular locally in a project.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7161v","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"4bbsh","text":"The question is, which angular cli will be used when running a command?","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"c19gg","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"bh2af","text":"The answer is, it depends:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"3pjl7","text":"If you run it through a script inside package.json, then it will take the local version.","type":"unordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"b78tj","text":"If you run it through the command line directly, then it will take the global version.","type":"unordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"dr5u0","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Binary Search Tree (BST)',
        '{"blocks":[{"key":"16l7b","text":"Binary tree which is very fast in lookup and inserting data.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"bcl08","text":"How it works?","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"3ohj","text":"A node can have 0,1 or 2 children nodes, the rule is that the left child is smaller than the parent, the right child is greater than the parent.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Javascript: Difference between tasks and microtasks',
        '{"blocks":[{"key":"94tkr","text":"Tasks are callbacks like click event listeners and setTimeout whereas microtasks are usually Promise callbacks.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"3of10","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"705p7","text":"The difference is that no matter how many tasks are in the task queue is, only one of those will be executed per iteration of the event loop.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"64jbm","text":"The microtask queue on the other hand will be emptied out before proceeding to the next iteration of the event loop.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"1ftgo","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"4bvj5","text":"This means that a task that keeps getting queued recursively and immediately will not affect the page whereas in the microtask case will result in a dead page.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Microtask scheduling and promises in Javascript',
        '{"blocks":[{"key":"erqva","text":"A tricky question:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"3po7d","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"8pp2d","text":"Promise.resolve(\"One\").then(console.log)","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":40,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"65rnu","text":"Promise.resolve(\"Two\").then(console.log)","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":40,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"5dogi","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"epu0i","text":"// One","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":6,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"e50en","text":"// Two","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":6,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"2kped","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"cn52s","text":"However...","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7f6bp","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"4o41o","text":"Promise.resolve(\"One\")","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":22,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"bdkif","text":"    .then(x => x)","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":17,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"bld68","text":"    .then(console.log)","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":22,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"fh5vf","text":"Promise.resolve(\"Two\").then(console.log)","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":40,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"373l3","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7r5km","text":"// Two","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":6,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"5ba8d","text":"// One","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":6,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"fpsil","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Regex match up to and excluding a character',
        '{"blocks":[{"key":"b56ce","text":"Input: /categories/3/posts/2","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"bgk2","text":"Desired match: 3","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":15,"length":1,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"8n000","text":"Regex: (?<=categories\\\\/)((.*?(?=\\\\/))","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":29,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"6lt3d","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7se0t","text":"Explanation: ?<= is positive lookbehind, .*? is match and stop after one discovery. Lastly, ?= is a positive look ahead. By combining both lookbehind and lookahead, we can capture the sandwiched result which is 3 in this case, that is between the categories/ and the /posts.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":13,"length":3,"style":"CODE"},{"offset":41,"length":3,"style":"CODE"},{"offset":92,"length":2,"style":"CODE"}],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Git revert commit before push',
        '{"blocks":[{"key":"8bjrq","text":"git reset HEAD~1","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":16,"style":"CODE"}],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'What is CIDR',
        '{"blocks":[{"key":"dus3b","text":"Stands for Classless Interdomain Routing, it is a method for allocating IP addresses within a network","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"3q7e5","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"cfqp3","text":"A CIDR IP address consists of 2 main parts:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"3sqkl","text":"Network prefix (172.31.12.0)","type":"ordered-list-item","depth":0,"inlineStyleRanges":[{"offset":0,"length":14,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"5lsgi","text":"Suffix (/24)","type":"ordered-list-item","depth":0,"inlineStyleRanges":[{"offset":0,"length":6,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"22iqd","text":"Example:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"11jbq","text":"172.31.12.0/24","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":14,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"3bo41","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"4m69o","text":"Network portion = 24","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":20,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"6b9r0","text":"Host portion = 8","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":16,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"f4qgo","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7l9v9","text":"In other words, we can only assign 172.31.12.0 -> 172.31.12.255 for hosts where the first three octets are going to be the same for all hosts.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"420dd","text":"So number of hosts = 2^(32 - suffix) ","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":21,"length":2,"style":"BOLD"},{"offset":24,"length":12,"style":"BOLD"}],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Git reset branch to master',
        '{"blocks":[{"key":"8lc4d","text":"git reset --hard origin/master","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":30,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"fbkbr","text":"git push -f","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":11,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"9tin8","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"92auq","text":"Note that without git push -f, you will be forced to git pull first which is like doing git merge master","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":104,"style":"BOLD"}],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'ACID - database transactions',
        '{"blocks":[{"key":"qtba","text":"A: Atomic. All or nothing, all changes must be performed successfully or not at all.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":3,"length":6,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"65d23","text":"C: Consistent. Data must be consistent, e.g if a transfer of money from 1 row to another in a table of bank accounts, the total money must remain the same.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":3,"length":10,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"9t4uh","text":"I: Isolated. No other process can change the data while a transaction is in progress.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":3,"length":8,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"dhkpr","text":"D: Durable. The changes made by a transaction must be persisted.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":3,"length":7,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"8fgai","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Webpack Vs. Babel',
        '{"blocks":[{"key":"d91v0","text":"Babel: Basically it transpiles new Javascript code to older versions that are compatable with all browsers. It comes as a second step after webpack has done its job.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":5,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"a204g","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"2t10b","text":"Webpack: It is a static module bundler, responsible for  building a dependency graph of the application and combine every module that the application needs into one or more bundles.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":7,"style":"BOLD"}],"entityRanges":[],"data":{}},{"key":"3in5j","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Recursion Vs. Tail Recursion',
        '{"blocks":[{"key":"7skkr","text":"In classical recursion, the evaluation of an expression will be evaluated last until each recursive method has been expanded and evaluated. Therefore, you only get the result after evaluating each recursive call.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"6r0f7","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"c7sfj","text":"This is easier explained with an example:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"78m5c","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"aj5e6","text":"function recsum(x) {\nif (x === 0) {\nreturn 0;\n}else {\nreturn x + recsum(x - 1);\n}\n}","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":112,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"arp80","text":"recsum(2);","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":10,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"dpv2","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"5l7bt","text":"// 2 + recsum(1)","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":16,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"a5dn0","text":"// 2 + 1 + recsum(0)","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":20,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"ad0o6","text":"// 2 + 1 + 0","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":12,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"55n1m","text":"// 3","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":4,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"387o6","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"dplaq","text":"---","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":3,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"8vou5","text":"For tail recursion, the recursive call is evaluated and the result is brought forward to the next recursive call.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"60h6v","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"d0ebm","text":"function tailrecsum(x, running_total = 0) {\nif (x === 0) {\nreturn running_total;\n}else {\nreturn tailrecsum(x - 1, running_total + x);\n}\n}","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":166,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"6310c","text":"tailrecsum(2);","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":14,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"cc1o","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"cmush","text":"// tailrecsum(1, 2);","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":20,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"bfi0k","text":"// tailrecsum(0, 3);","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":20,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"mmgv","text":"// 3","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":4,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"b0n9c","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7n8bt","text":"This has some important implications on resource allocation, namely the stack. Since tail recursion does not need the current stack frame (since the result is brought forward as a parameter to the recurcive function), this will avoid cases of stack overflow if the compiler does the correct optimization (not all languages have compilers that perform this, Java for example does NOT which means recursion may lead to stack overflow).","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7pd00","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"accai","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'HSTS - Https Strict Transport Security',
        '{"blocks":[{"key":"4mbfm","text":"Problem: making an http request to a server that then redirects to https of that server. This means that this first request is unencrypted and with a MITM attack, this request can be intercepted and redirect to a malicious website.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"56q61","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"d48nl","text":"Solution: HSTS, where the browsers are pre-loaded with a list of https websites, such that the first request would be made directly to the https.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"5sgm4","text":"In addition, a web-server can reply to the first unencrypted request with a header that gets the browser to update this list.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'Database Index',
        '{"blocks":[{"key":"cfmt8","text":"Database index is a data structure that sorts the underlying data, allowing for faster read queries by avoiding the need for complete table scans.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"4e94n","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"fnjnj","text":"An example is using B-tree (Balanced tree) which as the name suggests, is balanced and not skewed in favor of any side.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"2e88s","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"dho9l","text":"A database index stores the underlying data (column) along with the row id (not PK id, but row id which is used by the database to fetch the record from the heap).","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"icfr","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"5sk1j","text":"Database index has a cost, writes can become slower. This is because entries require rebalancing the B-tree for example which is a performance hit.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    ),
    (
        'CSS: Target all child elements except first',
        '{"blocks":[{"key":"9v9f6","text":"It can be useful in scenarios to set for example a border-top on all the child elements but it doesnt make sense to do that on the first one.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9agl5","text":"To solve this:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"1gmeo","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"t0n0","text":"<style>","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":7,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"91ndb","text":"    .container > *:not(:first-child) {","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":38,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"5rtkn","text":"tborder-top: 1px solid black;","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":29,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"5vulo","text":"    }","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":5,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"apbvl","text":"</style>","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":8,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"c2323","text":"<div class="container">","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":23,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"937if","text":"  <div> Child one </div>","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":24,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"fs0e2","text":"  <div> Child two </div>","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":24,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"c3v73","text":"  <div> Child three </div>","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":26,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"6lbo0","text":"</div>","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":6,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"dnr59","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}],"entityMap":{}}',
        1,
        1,
        '2022-01-09 18:33:51.392+01',
        '2022-01-09 18:33:51.392+01'
    );