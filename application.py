import asyncio
from pyppeteer import launch


async def test():
    browser = await launch(args=['--no-sandbox'])
    page = await browser.newPage()
    await page.goto("https://www.google.com")
    await asyncio.sleep(1)
    await page.screenshot({'path': 'image.png'})
    await browser.close()


if __name__ == '__main__':
    print("Running test")
    asyncio.get_event_loop().run_until_complete(test())
    print("Screenshot taken and test done")
